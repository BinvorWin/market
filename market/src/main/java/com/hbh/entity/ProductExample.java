package com.hbh.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class ProductExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ProductExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andProidIsNull() {
            addCriterion("proid is null");
            return (Criteria) this;
        }

        public Criteria andProidIsNotNull() {
            addCriterion("proid is not null");
            return (Criteria) this;
        }

        public Criteria andProidEqualTo(String value) {
            addCriterion("proid =", value, "proid");
            return (Criteria) this;
        }

        public Criteria andProidNotEqualTo(String value) {
            addCriterion("proid <>", value, "proid");
            return (Criteria) this;
        }

        public Criteria andProidGreaterThan(String value) {
            addCriterion("proid >", value, "proid");
            return (Criteria) this;
        }

        public Criteria andProidGreaterThanOrEqualTo(String value) {
            addCriterion("proid >=", value, "proid");
            return (Criteria) this;
        }

        public Criteria andProidLessThan(String value) {
            addCriterion("proid <", value, "proid");
            return (Criteria) this;
        }

        public Criteria andProidLessThanOrEqualTo(String value) {
            addCriterion("proid <=", value, "proid");
            return (Criteria) this;
        }

        public Criteria andProidLike(String value) {
            addCriterion("proid like", value, "proid");
            return (Criteria) this;
        }

        public Criteria andProidNotLike(String value) {
            addCriterion("proid not like", value, "proid");
            return (Criteria) this;
        }

        public Criteria andProidIn(List<String> values) {
            addCriterion("proid in", values, "proid");
            return (Criteria) this;
        }

        public Criteria andProidNotIn(List<String> values) {
            addCriterion("proid not in", values, "proid");
            return (Criteria) this;
        }

        public Criteria andProidBetween(String value1, String value2) {
            addCriterion("proid between", value1, value2, "proid");
            return (Criteria) this;
        }

        public Criteria andProidNotBetween(String value1, String value2) {
            addCriterion("proid not between", value1, value2, "proid");
            return (Criteria) this;
        }

        public Criteria andPnameIsNull() {
            addCriterion("pname is null");
            return (Criteria) this;
        }

        public Criteria andPnameIsNotNull() {
            addCriterion("pname is not null");
            return (Criteria) this;
        }

        public Criteria andPnameEqualTo(String value) {
            addCriterion("pname =", value, "pname");
            return (Criteria) this;
        }

        public Criteria andPnameNotEqualTo(String value) {
            addCriterion("pname <>", value, "pname");
            return (Criteria) this;
        }

        public Criteria andPnameGreaterThan(String value) {
            addCriterion("pname >", value, "pname");
            return (Criteria) this;
        }

        public Criteria andPnameGreaterThanOrEqualTo(String value) {
            addCriterion("pname >=", value, "pname");
            return (Criteria) this;
        }

        public Criteria andPnameLessThan(String value) {
            addCriterion("pname <", value, "pname");
            return (Criteria) this;
        }

        public Criteria andPnameLessThanOrEqualTo(String value) {
            addCriterion("pname <=", value, "pname");
            return (Criteria) this;
        }

        public Criteria andPnameLike(String value) {
            addCriterion("pname like", value, "pname");
            return (Criteria) this;
        }

        public Criteria andPnameNotLike(String value) {
            addCriterion("pname not like", value, "pname");
            return (Criteria) this;
        }

        public Criteria andPnameIn(List<String> values) {
            addCriterion("pname in", values, "pname");
            return (Criteria) this;
        }

        public Criteria andPnameNotIn(List<String> values) {
            addCriterion("pname not in", values, "pname");
            return (Criteria) this;
        }

        public Criteria andPnameBetween(String value1, String value2) {
            addCriterion("pname between", value1, value2, "pname");
            return (Criteria) this;
        }

        public Criteria andPnameNotBetween(String value1, String value2) {
            addCriterion("pname not between", value1, value2, "pname");
            return (Criteria) this;
        }

        public Criteria andPriceIsNull() {
            addCriterion("price is null");
            return (Criteria) this;
        }

        public Criteria andPriceIsNotNull() {
            addCriterion("price is not null");
            return (Criteria) this;
        }

        public Criteria andPriceEqualTo(Double value) {
            addCriterion("price =", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotEqualTo(Double value) {
            addCriterion("price <>", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceGreaterThan(Double value) {
            addCriterion("price >", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceGreaterThanOrEqualTo(Double value) {
            addCriterion("price >=", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceLessThan(Double value) {
            addCriterion("price <", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceLessThanOrEqualTo(Double value) {
            addCriterion("price <=", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceIn(List<Double> values) {
            addCriterion("price in", values, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotIn(List<Double> values) {
            addCriterion("price not in", values, "price");
            return (Criteria) this;
        }

        public Criteria andPriceBetween(Double value1, Double value2) {
            addCriterion("price between", value1, value2, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotBetween(Double value1, Double value2) {
            addCriterion("price not between", value1, value2, "price");
            return (Criteria) this;
        }

        public Criteria andInpriceIsNull() {
            addCriterion("inprice is null");
            return (Criteria) this;
        }

        public Criteria andInpriceIsNotNull() {
            addCriterion("inprice is not null");
            return (Criteria) this;
        }

        public Criteria andInpriceEqualTo(Double value) {
            addCriterion("inprice =", value, "inprice");
            return (Criteria) this;
        }

        public Criteria andInpriceNotEqualTo(Double value) {
            addCriterion("inprice <>", value, "inprice");
            return (Criteria) this;
        }

        public Criteria andInpriceGreaterThan(Double value) {
            addCriterion("inprice >", value, "inprice");
            return (Criteria) this;
        }

        public Criteria andInpriceGreaterThanOrEqualTo(Double value) {
            addCriterion("inprice >=", value, "inprice");
            return (Criteria) this;
        }

        public Criteria andInpriceLessThan(Double value) {
            addCriterion("inprice <", value, "inprice");
            return (Criteria) this;
        }

        public Criteria andInpriceLessThanOrEqualTo(Double value) {
            addCriterion("inprice <=", value, "inprice");
            return (Criteria) this;
        }

        public Criteria andInpriceIn(List<Double> values) {
            addCriterion("inprice in", values, "inprice");
            return (Criteria) this;
        }

        public Criteria andInpriceNotIn(List<Double> values) {
            addCriterion("inprice not in", values, "inprice");
            return (Criteria) this;
        }

        public Criteria andInpriceBetween(Double value1, Double value2) {
            addCriterion("inprice between", value1, value2, "inprice");
            return (Criteria) this;
        }

        public Criteria andInpriceNotBetween(Double value1, Double value2) {
            addCriterion("inprice not between", value1, value2, "inprice");
            return (Criteria) this;
        }

        public Criteria andProdateIsNull() {
            addCriterion("prodate is null");
            return (Criteria) this;
        }

        public Criteria andProdateIsNotNull() {
            addCriterion("prodate is not null");
            return (Criteria) this;
        }

        public Criteria andProdateEqualTo(Date value) {
            addCriterionForJDBCDate("prodate =", value, "prodate");
            return (Criteria) this;
        }

        public Criteria andProdateNotEqualTo(Date value) {
            addCriterionForJDBCDate("prodate <>", value, "prodate");
            return (Criteria) this;
        }

        public Criteria andProdateGreaterThan(Date value) {
            addCriterionForJDBCDate("prodate >", value, "prodate");
            return (Criteria) this;
        }

        public Criteria andProdateGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("prodate >=", value, "prodate");
            return (Criteria) this;
        }

        public Criteria andProdateLessThan(Date value) {
            addCriterionForJDBCDate("prodate <", value, "prodate");
            return (Criteria) this;
        }

        public Criteria andProdateLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("prodate <=", value, "prodate");
            return (Criteria) this;
        }

        public Criteria andProdateIn(List<Date> values) {
            addCriterionForJDBCDate("prodate in", values, "prodate");
            return (Criteria) this;
        }

        public Criteria andProdateNotIn(List<Date> values) {
            addCriterionForJDBCDate("prodate not in", values, "prodate");
            return (Criteria) this;
        }

        public Criteria andProdateBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("prodate between", value1, value2, "prodate");
            return (Criteria) this;
        }

        public Criteria andProdateNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("prodate not between", value1, value2, "prodate");
            return (Criteria) this;
        }

        public Criteria andReledateIsNull() {
            addCriterion("reledate is null");
            return (Criteria) this;
        }

        public Criteria andReledateIsNotNull() {
            addCriterion("reledate is not null");
            return (Criteria) this;
        }

        public Criteria andReledateEqualTo(Date value) {
            addCriterionForJDBCDate("reledate =", value, "reledate");
            return (Criteria) this;
        }

        public Criteria andReledateNotEqualTo(Date value) {
            addCriterionForJDBCDate("reledate <>", value, "reledate");
            return (Criteria) this;
        }

        public Criteria andReledateGreaterThan(Date value) {
            addCriterionForJDBCDate("reledate >", value, "reledate");
            return (Criteria) this;
        }

        public Criteria andReledateGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("reledate >=", value, "reledate");
            return (Criteria) this;
        }

        public Criteria andReledateLessThan(Date value) {
            addCriterionForJDBCDate("reledate <", value, "reledate");
            return (Criteria) this;
        }

        public Criteria andReledateLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("reledate <=", value, "reledate");
            return (Criteria) this;
        }

        public Criteria andReledateIn(List<Date> values) {
            addCriterionForJDBCDate("reledate in", values, "reledate");
            return (Criteria) this;
        }

        public Criteria andReledateNotIn(List<Date> values) {
            addCriterionForJDBCDate("reledate not in", values, "reledate");
            return (Criteria) this;
        }

        public Criteria andReledateBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("reledate between", value1, value2, "reledate");
            return (Criteria) this;
        }

        public Criteria andReledateNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("reledate not between", value1, value2, "reledate");
            return (Criteria) this;
        }

        public Criteria andSupnameIsNull() {
            addCriterion("supname is null");
            return (Criteria) this;
        }

        public Criteria andSupnameIsNotNull() {
            addCriterion("supname is not null");
            return (Criteria) this;
        }

        public Criteria andSupnameEqualTo(String value) {
            addCriterion("supname =", value, "supname");
            return (Criteria) this;
        }

        public Criteria andSupnameNotEqualTo(String value) {
            addCriterion("supname <>", value, "supname");
            return (Criteria) this;
        }

        public Criteria andSupnameGreaterThan(String value) {
            addCriterion("supname >", value, "supname");
            return (Criteria) this;
        }

        public Criteria andSupnameGreaterThanOrEqualTo(String value) {
            addCriterion("supname >=", value, "supname");
            return (Criteria) this;
        }

        public Criteria andSupnameLessThan(String value) {
            addCriterion("supname <", value, "supname");
            return (Criteria) this;
        }

        public Criteria andSupnameLessThanOrEqualTo(String value) {
            addCriterion("supname <=", value, "supname");
            return (Criteria) this;
        }

        public Criteria andSupnameLike(String value) {
            addCriterion("supname like", value, "supname");
            return (Criteria) this;
        }

        public Criteria andSupnameNotLike(String value) {
            addCriterion("supname not like", value, "supname");
            return (Criteria) this;
        }

        public Criteria andSupnameIn(List<String> values) {
            addCriterion("supname in", values, "supname");
            return (Criteria) this;
        }

        public Criteria andSupnameNotIn(List<String> values) {
            addCriterion("supname not in", values, "supname");
            return (Criteria) this;
        }

        public Criteria andSupnameBetween(String value1, String value2) {
            addCriterion("supname between", value1, value2, "supname");
            return (Criteria) this;
        }

        public Criteria andSupnameNotBetween(String value1, String value2) {
            addCriterion("supname not between", value1, value2, "supname");
            return (Criteria) this;
        }

        public Criteria andProtypeIsNull() {
            addCriterion("protype is null");
            return (Criteria) this;
        }

        public Criteria andProtypeIsNotNull() {
            addCriterion("protype is not null");
            return (Criteria) this;
        }

        public Criteria andProtypeEqualTo(String value) {
            addCriterion("protype =", value, "protype");
            return (Criteria) this;
        }

        public Criteria andProtypeNotEqualTo(String value) {
            addCriterion("protype <>", value, "protype");
            return (Criteria) this;
        }

        public Criteria andProtypeGreaterThan(String value) {
            addCriterion("protype >", value, "protype");
            return (Criteria) this;
        }

        public Criteria andProtypeGreaterThanOrEqualTo(String value) {
            addCriterion("protype >=", value, "protype");
            return (Criteria) this;
        }

        public Criteria andProtypeLessThan(String value) {
            addCriterion("protype <", value, "protype");
            return (Criteria) this;
        }

        public Criteria andProtypeLessThanOrEqualTo(String value) {
            addCriterion("protype <=", value, "protype");
            return (Criteria) this;
        }

        public Criteria andProtypeLike(String value) {
            addCriterion("protype like", value, "protype");
            return (Criteria) this;
        }

        public Criteria andProtypeNotLike(String value) {
            addCriterion("protype not like", value, "protype");
            return (Criteria) this;
        }

        public Criteria andProtypeIn(List<String> values) {
            addCriterion("protype in", values, "protype");
            return (Criteria) this;
        }

        public Criteria andProtypeNotIn(List<String> values) {
            addCriterion("protype not in", values, "protype");
            return (Criteria) this;
        }

        public Criteria andProtypeBetween(String value1, String value2) {
            addCriterion("protype between", value1, value2, "protype");
            return (Criteria) this;
        }

        public Criteria andProtypeNotBetween(String value1, String value2) {
            addCriterion("protype not between", value1, value2, "protype");
            return (Criteria) this;
        }

        public Criteria andUnitIsNull() {
            addCriterion("unit is null");
            return (Criteria) this;
        }

        public Criteria andUnitIsNotNull() {
            addCriterion("unit is not null");
            return (Criteria) this;
        }

        public Criteria andUnitEqualTo(String value) {
            addCriterion("unit =", value, "unit");
            return (Criteria) this;
        }

        public Criteria andUnitNotEqualTo(String value) {
            addCriterion("unit <>", value, "unit");
            return (Criteria) this;
        }

        public Criteria andUnitGreaterThan(String value) {
            addCriterion("unit >", value, "unit");
            return (Criteria) this;
        }

        public Criteria andUnitGreaterThanOrEqualTo(String value) {
            addCriterion("unit >=", value, "unit");
            return (Criteria) this;
        }

        public Criteria andUnitLessThan(String value) {
            addCriterion("unit <", value, "unit");
            return (Criteria) this;
        }

        public Criteria andUnitLessThanOrEqualTo(String value) {
            addCriterion("unit <=", value, "unit");
            return (Criteria) this;
        }

        public Criteria andUnitLike(String value) {
            addCriterion("unit like", value, "unit");
            return (Criteria) this;
        }

        public Criteria andUnitNotLike(String value) {
            addCriterion("unit not like", value, "unit");
            return (Criteria) this;
        }

        public Criteria andUnitIn(List<String> values) {
            addCriterion("unit in", values, "unit");
            return (Criteria) this;
        }

        public Criteria andUnitNotIn(List<String> values) {
            addCriterion("unit not in", values, "unit");
            return (Criteria) this;
        }

        public Criteria andUnitBetween(String value1, String value2) {
            addCriterion("unit between", value1, value2, "unit");
            return (Criteria) this;
        }

        public Criteria andUnitNotBetween(String value1, String value2) {
            addCriterion("unit not between", value1, value2, "unit");
            return (Criteria) this;
        }

        public Criteria andMarksIsNull() {
            addCriterion("marks is null");
            return (Criteria) this;
        }

        public Criteria andMarksIsNotNull() {
            addCriterion("marks is not null");
            return (Criteria) this;
        }

        public Criteria andMarksEqualTo(String value) {
            addCriterion("marks =", value, "marks");
            return (Criteria) this;
        }

        public Criteria andMarksNotEqualTo(String value) {
            addCriterion("marks <>", value, "marks");
            return (Criteria) this;
        }

        public Criteria andMarksGreaterThan(String value) {
            addCriterion("marks >", value, "marks");
            return (Criteria) this;
        }

        public Criteria andMarksGreaterThanOrEqualTo(String value) {
            addCriterion("marks >=", value, "marks");
            return (Criteria) this;
        }

        public Criteria andMarksLessThan(String value) {
            addCriterion("marks <", value, "marks");
            return (Criteria) this;
        }

        public Criteria andMarksLessThanOrEqualTo(String value) {
            addCriterion("marks <=", value, "marks");
            return (Criteria) this;
        }

        public Criteria andMarksLike(String value) {
            addCriterion("marks like", value, "marks");
            return (Criteria) this;
        }

        public Criteria andMarksNotLike(String value) {
            addCriterion("marks not like", value, "marks");
            return (Criteria) this;
        }

        public Criteria andMarksIn(List<String> values) {
            addCriterion("marks in", values, "marks");
            return (Criteria) this;
        }

        public Criteria andMarksNotIn(List<String> values) {
            addCriterion("marks not in", values, "marks");
            return (Criteria) this;
        }

        public Criteria andMarksBetween(String value1, String value2) {
            addCriterion("marks between", value1, value2, "marks");
            return (Criteria) this;
        }

        public Criteria andMarksNotBetween(String value1, String value2) {
            addCriterion("marks not between", value1, value2, "marks");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}