package com.coachcoach.domain;

import java.io.Serializable;

public class Coach implements Serializable {

  private static final long serialVersionUID = 1L;

  int no; // 코치번호
  String id; // 아이디
  String name; // 이름
  int gender; // 성별
  String birth; // 생년월일
  String tel; // 휴대폰번호
  String email; // 이메일
  String password; // 비밀번호
  String photo; // 사진
  String area; // 수업가능지역
  String career; // 경력사항
  String certification; // 보유자격증
  String introduce; // 강사소개
  int members; // 회원수
  String createdDate; // 가입일
  String bank; // 은행
  String account; // 계좌번호
  String workType; // 유형
  String address; // 주소
  String latitude; // 위도
  String longitude; // 경도
  int withdrawal; // 탈퇴여부
  String withdrawalDate; // 탈퇴날짜
  int withdrawalReason; // 탈퇴이유



  @Override
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + (account == null ? 0 : account.hashCode());
    result = prime * result + (address == null ? 0 : address.hashCode());
    result = prime * result + (area == null ? 0 : area.hashCode());
    result = prime * result + (bank == null ? 0 : bank.hashCode());
    result = prime * result + (birth == null ? 0 : birth.hashCode());
    result = prime * result + (career == null ? 0 : career.hashCode());
    result = prime * result + (certification == null ? 0 : certification.hashCode());
    result = prime * result + (createdDate == null ? 0 : createdDate.hashCode());
    result = prime * result + (email == null ? 0 : email.hashCode());
    result = prime * result + gender;
    result = prime * result + (id == null ? 0 : id.hashCode());
    result = prime * result + (introduce == null ? 0 : introduce.hashCode());
    result = prime * result + (latitude == null ? 0 : latitude.hashCode());
    result = prime * result + (longitude == null ? 0 : longitude.hashCode());
    result = prime * result + members;
    result = prime * result + (name == null ? 0 : name.hashCode());
    result = prime * result + no;
    result = prime * result + (password == null ? 0 : password.hashCode());
    result = prime * result + (photo == null ? 0 : photo.hashCode());
    result = prime * result + (tel == null ? 0 : tel.hashCode());
    result = prime * result + withdrawal;
    result = prime * result + (withdrawalDate == null ? 0 : withdrawalDate.hashCode());
    result = prime * result + withdrawalReason;
    result = prime * result + (workType == null ? 0 : workType.hashCode());
    return result;
  }


  @Override
  public boolean equals(Object obj) {
    if (this == obj)
      return true;
    if (obj == null)
      return false;
    if (getClass() != obj.getClass())
      return false;
    Coach other = (Coach) obj;
    if (account == null) {
      if (other.account != null)
        return false;
    } else if (!account.equals(other.account))
      return false;
    if (address == null) {
      if (other.address != null)
        return false;
    } else if (!address.equals(other.address))
      return false;
    if (area == null) {
      if (other.area != null)
        return false;
    } else if (!area.equals(other.area))
      return false;
    if (bank == null) {
      if (other.bank != null)
        return false;
    } else if (!bank.equals(other.bank))
      return false;
    if (birth == null) {
      if (other.birth != null)
        return false;
    } else if (!birth.equals(other.birth))
      return false;
    if (career == null) {
      if (other.career != null)
        return false;
    } else if (!career.equals(other.career))
      return false;
    if (certification == null) {
      if (other.certification != null)
        return false;
    } else if (!certification.equals(other.certification))
      return false;
    if (createdDate == null) {
      if (other.createdDate != null)
        return false;
    } else if (!createdDate.equals(other.createdDate))
      return false;
    if (email == null) {
      if (other.email != null)
        return false;
    } else if (!email.equals(other.email))
      return false;
    if (gender != other.gender)
      return false;
    if (id == null) {
      if (other.id != null)
        return false;
    } else if (!id.equals(other.id))
      return false;
    if (introduce == null) {
      if (other.introduce != null)
        return false;
    } else if (!introduce.equals(other.introduce))
      return false;
    if (latitude == null) {
      if (other.latitude != null)
        return false;
    } else if (!latitude.equals(other.latitude))
      return false;
    if (longitude == null) {
      if (other.longitude != null)
        return false;
    } else if (!longitude.equals(other.longitude))
      return false;
    if (members != other.members)
      return false;
    if (name == null) {
      if (other.name != null)
        return false;
    } else if (!name.equals(other.name))
      return false;
    if (no != other.no)
      return false;
    if (password == null) {
      if (other.password != null)
        return false;
    } else if (!password.equals(other.password))
      return false;
    if (photo == null) {
      if (other.photo != null)
        return false;
    } else if (!photo.equals(other.photo))
      return false;
    if (tel == null) {
      if (other.tel != null)
        return false;
    } else if (!tel.equals(other.tel))
      return false;
    if (withdrawal != other.withdrawal)
      return false;
    if (withdrawalDate == null) {
      if (other.withdrawalDate != null)
        return false;
    } else if (!withdrawalDate.equals(other.withdrawalDate))
      return false;
    if (withdrawalReason != other.withdrawalReason)
      return false;
    if (workType == null) {
      if (other.workType != null)
        return false;
    } else if (!workType.equals(other.workType))
      return false;
    return true;
  }


  @Override
  public String toString() {
    return "Coach [no=" + no + ", id=" + id + ", name=" + name + ", gender=" + gender + ", birth="
        + birth + ", tel=" + tel + ", email=" + email + ", password=" + password + ", photo="
        + photo + ", area=" + area + ", career=" + career + ", certification=" + certification
        + ", introduce=" + introduce + ", members=" + members + ", createdDate=" + createdDate
        + ", bank=" + bank + ", account=" + account + ", workType=" + workType + ", address="
        + address + ", latitude=" + latitude + ", longitude=" + longitude + ", withdrawal="
        + withdrawal + ", withdrawalDate=" + withdrawalDate + ", withdrawalReason="
        + withdrawalReason + "]";
  }


  public int getNo() {
    return no;
  }

  public void setNo(int no) {
    this.no = no;
  }

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public int getGender() {
    return gender;
  }

  public void setGender(int gender) {
    this.gender = gender;
  }

  public String getBirth() {
    return birth;
  }

  public void setBirth(String birth) {
    this.birth = birth;
  }

  public String getTel() {
    return tel;
  }

  public void setTel(String tel) {
    this.tel = tel;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public String getPhoto() {
    return photo;
  }

  public void setPhoto(String photo) {
    this.photo = photo;
  }

  public String getArea() {
    return area;
  }

  public void setArea(String area) {
    this.area = area;
  }

  public String getCareer() {
    return career;
  }

  public void setCareer(String career) {
    this.career = career;
  }

  public String getCertification() {
    return certification;
  }

  public void setCertification(String certification) {
    this.certification = certification;
  }

  public String getIntroduce() {
    return introduce;
  }

  public void setIntroduce(String introduce) {
    this.introduce = introduce;
  }

  public int getMembers() {
    return members;
  }

  public void setMembers(int members) {
    this.members = members;
  }

  public String getCreatedDate() {
    return createdDate;
  }

  public void setCreatedDate(String createdDate) {
    this.createdDate = createdDate;
  }

  public String getBank() {
    return bank;
  }

  public void setBank(String bank) {
    this.bank = bank;
  }

  public String getAccount() {
    return account;
  }

  public void setAccount(String account) {
    this.account = account;
  }

  public String getWorkType() {
    return workType;
  }

  public void setWorkType(String workType) {
    this.workType = workType;
  }

  public String getAddress() {
    return address;
  }

  public void setAddress(String address) {
    this.address = address;
  }

  public String getLatitude() {
    return latitude;
  }

  public void setLatitude(String latitude) {
    this.latitude = latitude;
  }

  public String getLongitude() {
    return longitude;
  }

  public void setLongitude(String longitude) {
    this.longitude = longitude;
  }

  public int getWithdrawal() {
    return withdrawal;
  }

  public void setWithdrawal(int withdrawal) {
    this.withdrawal = withdrawal;
  }

  public String getWithdrawalDate() {
    return withdrawalDate;
  }

  public void setWithdrawalDate(String withdrawalDate) {
    this.withdrawalDate = withdrawalDate;
  }

  public int getWithdrawalReason() {
    return withdrawalReason;
  }

  public void setWithdrawalReason(int withdrawalReason) {
    this.withdrawalReason = withdrawalReason;
  }

  public static long getSerialversionuid() {
    return serialVersionUID;
  }



}
