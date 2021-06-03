import places from 'places.js';

const initAutocomplete = () => {
  const localisationInput = document.getElementById('offer_localisation');
  if (localisationInput) {
    places({ container: localisationInput });
  }
};

export { initAutocomplete };
