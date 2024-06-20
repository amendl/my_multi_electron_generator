// exaegir/my_event_generator.cc

// Ourselves
#include <exaegir/my_event_generator.h>

// Standard library:
#include <cmath>

// Third party:
// - Bayeux:
#include <datatools/exception.h>
#include <datatools/logger.h>
#include <datatools/properties.h>
#include <datatools/units.h>
#include <genbb_help/primary_event.h>
#include <genbb_help/pdg_particle_tools.h>
#include <genbb_help/kinematics.h>
#include <mygsl/rng.h>

namespace exaegir {

  GENBB_PG_REGISTRATION_IMPLEMENT(my_event_generator,
				  "exaegir::my_event_generator")
    
  my_event_generator::my_event_generator()
  {
    _initialized_ = false;
    _at_reset_();
    return;
  }

  my_event_generator::~my_event_generator()
  {
    if (_initialized_) {
      reset();
    }
    return;
  }

  bool my_event_generator::can_external_random() const
  {
    return true;
  }

  bool my_event_generator::is_initialized() const
  {
    return _initialized_;
  }

  void my_event_generator::initialize(const datatools::properties & config_,
					  datatools::service_manager & srv_mgr_,
					  genbb::detail::pg_dict_type & pg_dict_)
  {
    DT_THROW_IF(_initialized_, std::logic_error,
		"Operation prohibited! Object is already initialized!");
    _initialize_base(config_);

    DT_THROW_IF(not config_.has_key("n_of_electrons"),
		std::logic_error,
		"Missing 'n_of_electrons' property!");
    n_of_electrons
      = config_.fetch_integer("n_of_electrons");
    DT_LOG_DEBUG(get_logging_priority(),
   	 "N of electrons: '" << n_of_electrons<< "'");
  
    _at_init_();
    _initialized_ = true;
    return;
  }

  void my_event_generator::reset()
  {
    if (!_initialized_) {
      return;
    }
    _initialized_ = false;
    _at_reset_();
    return;
  }

  bool my_event_generator::has_next()
  {
    return true;
  }

  void my_event_generator::_load_next(::genbb::primary_event & event_,
					 bool compute_classification_)
  {
    DT_LOG_TRACE_ENTERING(get_logging_priority());

    event_.reset();
    event_.set_time(0.0 * CLHEP::second);
    event_.set_label("dummy");
    for(size_t i;i<n_of_electrons;i++) {
	    ::genbb::primary_particle & newPart = event_.add_particle();
	    newPart.set_type(::genbb::primary_particle::particle_type::ELECTRON);
	    newPart.set_pdg_code(::genbb::pdg::particle::ELECTRON);
	    newPart.set_time(0.0 * CLHEP::second);
	    // Convert kinetic energy to momentum:
	    genbb::kinematics eKinematics;
	    // double kineticEnergy = _rejection_method_.shoot(grab_external_random()); // TODO
      double kineticEnergy = 0.;
	    eKinematics.initialize_from_m_k(newPart.get_mass(), kineticEnergy);
	    double px = 0.0 * CLHEP::MeV;
	    double py = 0.0 * CLHEP::MeV;
	    double pz = eKinematics.p();
	      double cosTheta = -1.0 + 2.0 * grab_external_random().uniform();
	      double sinTheta = std::sqrt(1.0 - cosTheta * cosTheta);
	      double phi = 2 * M_PI * grab_external_random().uniform();
	      px = pz * sinTheta * std::cos(phi);
	      py = pz * sinTheta * std::sin(phi);
	      pz = pz * cosTheta;
	    newPart.grab_momentum().setX(px);
	    newPart.grab_momentum().setY(py);
	    newPart.grab_momentum().setZ(pz);
    }
    if (compute_classification_) {
      event_.compute_classification();
    }
    
    DT_LOG_TRACE_EXITING(get_logging_priority());
    return;
  }
 
  void my_event_generator::_at_init_()
  {
   
    return;
  }
  
  void my_event_generator::_at_reset_()
  {
    return;
  }

} // end of namespace exaegir

