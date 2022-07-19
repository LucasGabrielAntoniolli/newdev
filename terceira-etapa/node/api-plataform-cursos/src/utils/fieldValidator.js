const fieldValidator = (body = {}, validFields = {}) => {
  
  
  const attrs = Object.keys(body);
  const invalidFields = [];

  attrs.forEach(attr => {
    if(!fieldsRequired.includes(attrs)){
     invalidFields.push(attr);
    }});
    return ;
};

module.exports = fieldValidator;