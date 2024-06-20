// -*- mode: c++ ; -*-
/** \file exaegir/my_event_generator.h
 * Author(s) : Francois Mauger <mauger@lpccaen.in2p3.fr>
 * Creation date: 2023-09-21
 * Last modified: 2023-09-21
 */

#ifndef EXAEGIR_my_event_generator_H
#define EXAEGIR_my_event_generator_H 1

// - Bayeux:
#include <genbb_help/i_genbb.h>
#include <datatools/utils.h>
#include <datatools/clhep_units.h>
#include <mygsl/tabulated_function.h>
#include <mygsl/von_neumann_method.h>

namespace exaegir {

  class my_event_generator    : public ::genbb::i_genbb

  {

  public:

    /// Constructor
    my_event_generator();


    /// Destructor
    virtual ~my_event_generator();

    /// Check if an external random engine can be plugged in
    bool can_external_random() const override;

    /// Check initialization status
    bool is_initialized() const override;

    /// Initialize the generator from configuration properties
    void initialize(const datatools::properties & config,
		    datatools::service_manager & srv_mgr_,
		    genbb::detail::pg_dict_type & pg_dict_) override;

    /// Reset the object
    void reset() override;

    /// Check is a next event is available
    bool has_next() override;
 
  protected:

    /// Load/generate a new event
    void _load_next(::genbb::primary_event & event_,
		    bool compute_classification_ = true) override;

  private:
  
    void _at_init_();

    void _at_reset_();

  private:
      
    bool _initialized_ = false; //!< Initialization flag

    size_t n_of_electrons = 0;

    
    GENBB_PG_REGISTRATION_INTERFACE(my_event_generator)
      
  };
      
} // end of namespace exaegir

#endif // EXAEGIR_my_event_generator_H

