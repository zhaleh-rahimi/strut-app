package data_access.entity;

import com.opensymphony.xwork2.ActionSupport;
import data_access.NaturalCustomerCRUD;


/**
 * Created by DOTIN SCHOOL 4 on 9/28/2016.
 */
public class NaturalCustomer extends ActionSupport {
    private String firstName;
    private String lastName;
    private String fatherName;
    private String dateOfBirth;
    private String nationalCode;
    private Integer customerId;
    private Integer id;

    public NaturalCustomer(String firstName, String lastName, String fatherName, String dateOfBirth, String nationalCode, Integer customerId) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.fatherName = fatherName;
        this.dateOfBirth = dateOfBirth;
        this.nationalCode = nationalCode;
        this.customerId = customerId;
    }

    public NaturalCustomer() {
    }

    public NaturalCustomer(String firstName, String lastName) {
        this.firstName = firstName;
        this.lastName = lastName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getFatherName() {
        return fatherName;
    }

    public void setFatherName(String fatherName) {
        this.fatherName = fatherName;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getNationalCode() {
        return nationalCode;
    }

    public void setNationalCode(String nationalCode) {
        this.nationalCode = nationalCode;
    }

    public Integer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Integer customerId) {
        this.customerId = customerId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "first name:" + getFirstName() + " ,last name: " + getLastName() + ", father name: " + getFatherName() +
                ", date of birth: " + getDateOfBirth() + ", national code: " + getNationalCode() + " , customer id:" + getCustomerId();
    }

    public String execute() {
        if (getFirstName().isEmpty() || getLastName().isEmpty() || getFatherName().isEmpty() || getDateOfBirth().isEmpty() || getNationalCode().isEmpty()) {
            return INPUT;
        } else {
            NaturalCustomerCRUD.saveUser(this);
            return SUCCESS;
        }
    }

}
