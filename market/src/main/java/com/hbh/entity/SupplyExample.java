package com.hbh.entity;

import java.util.ArrayList;
import java.util.List;

public class SupplyExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public SupplyExample() {
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

        public Criteria andSupidIsNull() {
            addCriterion("supid is null");
            return (Criteria) this;
        }

        public Criteria andSupidIsNotNull() {
            addCriterion("supid is not null");
            return (Criteria) this;
        }

        public Criteria andSupidEqualTo(String value) {
            addCriterion("supid =", value, "supid");
            return (Criteria) this;
        }

        public Criteria andSupidNotEqualTo(String value) {
            addCriterion("supid <>", value, "supid");
            return (Criteria) this;
        }

        public Criteria andSupidGreaterThan(String value) {
            addCriterion("supid >", value, "supid");
            return (Criteria) this;
        }

        public Criteria andSupidGreaterThanOrEqualTo(String value) {
            addCriterion("supid >=", value, "supid");
            return (Criteria) this;
        }

        public Criteria andSupidLessThan(String value) {
            addCriterion("supid <", value, "supid");
            return (Criteria) this;
        }

        public Criteria andSupidLessThanOrEqualTo(String value) {
            addCriterion("supid <=", value, "supid");
            return (Criteria) this;
        }

        public Criteria andSupidLike(String value) {
            addCriterion("supid like", value, "supid");
            return (Criteria) this;
        }

        public Criteria andSupidNotLike(String value) {
            addCriterion("supid not like", value, "supid");
            return (Criteria) this;
        }

        public Criteria andSupidIn(List<String> values) {
            addCriterion("supid in", values, "supid");
            return (Criteria) this;
        }

        public Criteria andSupidNotIn(List<String> values) {
            addCriterion("supid not in", values, "supid");
            return (Criteria) this;
        }

        public Criteria andSupidBetween(String value1, String value2) {
            addCriterion("supid between", value1, value2, "supid");
            return (Criteria) this;
        }

        public Criteria andSupidNotBetween(String value1, String value2) {
            addCriterion("supid not between", value1, value2, "supid");
            return (Criteria) this;
        }

        public Criteria andSuppnameIsNull() {
            addCriterion("suppname is null");
            return (Criteria) this;
        }

        public Criteria andSuppnameIsNotNull() {
            addCriterion("suppname is not null");
            return (Criteria) this;
        }

        public Criteria andSuppnameEqualTo(String value) {
            addCriterion("suppname =", value, "suppname");
            return (Criteria) this;
        }

        public Criteria andSuppnameNotEqualTo(String value) {
            addCriterion("suppname <>", value, "suppname");
            return (Criteria) this;
        }

        public Criteria andSuppnameGreaterThan(String value) {
            addCriterion("suppname >", value, "suppname");
            return (Criteria) this;
        }

        public Criteria andSuppnameGreaterThanOrEqualTo(String value) {
            addCriterion("suppname >=", value, "suppname");
            return (Criteria) this;
        }

        public Criteria andSuppnameLessThan(String value) {
            addCriterion("suppname <", value, "suppname");
            return (Criteria) this;
        }

        public Criteria andSuppnameLessThanOrEqualTo(String value) {
            addCriterion("suppname <=", value, "suppname");
            return (Criteria) this;
        }

        public Criteria andSuppnameLike(String value) {
            addCriterion("suppname like", value, "suppname");
            return (Criteria) this;
        }

        public Criteria andSuppnameNotLike(String value) {
            addCriterion("suppname not like", value, "suppname");
            return (Criteria) this;
        }

        public Criteria andSuppnameIn(List<String> values) {
            addCriterion("suppname in", values, "suppname");
            return (Criteria) this;
        }

        public Criteria andSuppnameNotIn(List<String> values) {
            addCriterion("suppname not in", values, "suppname");
            return (Criteria) this;
        }

        public Criteria andSuppnameBetween(String value1, String value2) {
            addCriterion("suppname between", value1, value2, "suppname");
            return (Criteria) this;
        }

        public Criteria andSuppnameNotBetween(String value1, String value2) {
            addCriterion("suppname not between", value1, value2, "suppname");
            return (Criteria) this;
        }

        public Criteria andTelIsNull() {
            addCriterion("tel is null");
            return (Criteria) this;
        }

        public Criteria andTelIsNotNull() {
            addCriterion("tel is not null");
            return (Criteria) this;
        }

        public Criteria andTelEqualTo(String value) {
            addCriterion("tel =", value, "tel");
            return (Criteria) this;
        }

        public Criteria andTelNotEqualTo(String value) {
            addCriterion("tel <>", value, "tel");
            return (Criteria) this;
        }

        public Criteria andTelGreaterThan(String value) {
            addCriterion("tel >", value, "tel");
            return (Criteria) this;
        }

        public Criteria andTelGreaterThanOrEqualTo(String value) {
            addCriterion("tel >=", value, "tel");
            return (Criteria) this;
        }

        public Criteria andTelLessThan(String value) {
            addCriterion("tel <", value, "tel");
            return (Criteria) this;
        }

        public Criteria andTelLessThanOrEqualTo(String value) {
            addCriterion("tel <=", value, "tel");
            return (Criteria) this;
        }

        public Criteria andTelLike(String value) {
            addCriterion("tel like", value, "tel");
            return (Criteria) this;
        }

        public Criteria andTelNotLike(String value) {
            addCriterion("tel not like", value, "tel");
            return (Criteria) this;
        }

        public Criteria andTelIn(List<String> values) {
            addCriterion("tel in", values, "tel");
            return (Criteria) this;
        }

        public Criteria andTelNotIn(List<String> values) {
            addCriterion("tel not in", values, "tel");
            return (Criteria) this;
        }

        public Criteria andTelBetween(String value1, String value2) {
            addCriterion("tel between", value1, value2, "tel");
            return (Criteria) this;
        }

        public Criteria andTelNotBetween(String value1, String value2) {
            addCriterion("tel not between", value1, value2, "tel");
            return (Criteria) this;
        }

        public Criteria andPersonIsNull() {
            addCriterion("person is null");
            return (Criteria) this;
        }

        public Criteria andPersonIsNotNull() {
            addCriterion("person is not null");
            return (Criteria) this;
        }

        public Criteria andPersonEqualTo(String value) {
            addCriterion("person =", value, "person");
            return (Criteria) this;
        }

        public Criteria andPersonNotEqualTo(String value) {
            addCriterion("person <>", value, "person");
            return (Criteria) this;
        }

        public Criteria andPersonGreaterThan(String value) {
            addCriterion("person >", value, "person");
            return (Criteria) this;
        }

        public Criteria andPersonGreaterThanOrEqualTo(String value) {
            addCriterion("person >=", value, "person");
            return (Criteria) this;
        }

        public Criteria andPersonLessThan(String value) {
            addCriterion("person <", value, "person");
            return (Criteria) this;
        }

        public Criteria andPersonLessThanOrEqualTo(String value) {
            addCriterion("person <=", value, "person");
            return (Criteria) this;
        }

        public Criteria andPersonLike(String value) {
            addCriterion("person like", value, "person");
            return (Criteria) this;
        }

        public Criteria andPersonNotLike(String value) {
            addCriterion("person not like", value, "person");
            return (Criteria) this;
        }

        public Criteria andPersonIn(List<String> values) {
            addCriterion("person in", values, "person");
            return (Criteria) this;
        }

        public Criteria andPersonNotIn(List<String> values) {
            addCriterion("person not in", values, "person");
            return (Criteria) this;
        }

        public Criteria andPersonBetween(String value1, String value2) {
            addCriterion("person between", value1, value2, "person");
            return (Criteria) this;
        }

        public Criteria andPersonNotBetween(String value1, String value2) {
            addCriterion("person not between", value1, value2, "person");
            return (Criteria) this;
        }

        public Criteria andAddressIsNull() {
            addCriterion("address is null");
            return (Criteria) this;
        }

        public Criteria andAddressIsNotNull() {
            addCriterion("address is not null");
            return (Criteria) this;
        }

        public Criteria andAddressEqualTo(String value) {
            addCriterion("address =", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressNotEqualTo(String value) {
            addCriterion("address <>", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressGreaterThan(String value) {
            addCriterion("address >", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressGreaterThanOrEqualTo(String value) {
            addCriterion("address >=", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressLessThan(String value) {
            addCriterion("address <", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressLessThanOrEqualTo(String value) {
            addCriterion("address <=", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressLike(String value) {
            addCriterion("address like", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressNotLike(String value) {
            addCriterion("address not like", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressIn(List<String> values) {
            addCriterion("address in", values, "address");
            return (Criteria) this;
        }

        public Criteria andAddressNotIn(List<String> values) {
            addCriterion("address not in", values, "address");
            return (Criteria) this;
        }

        public Criteria andAddressBetween(String value1, String value2) {
            addCriterion("address between", value1, value2, "address");
            return (Criteria) this;
        }

        public Criteria andAddressNotBetween(String value1, String value2) {
            addCriterion("address not between", value1, value2, "address");
            return (Criteria) this;
        }

        public Criteria andEmaliIsNull() {
            addCriterion("emali is null");
            return (Criteria) this;
        }

        public Criteria andEmaliIsNotNull() {
            addCriterion("emali is not null");
            return (Criteria) this;
        }

        public Criteria andEmaliEqualTo(String value) {
            addCriterion("emali =", value, "emali");
            return (Criteria) this;
        }

        public Criteria andEmaliNotEqualTo(String value) {
            addCriterion("emali <>", value, "emali");
            return (Criteria) this;
        }

        public Criteria andEmaliGreaterThan(String value) {
            addCriterion("emali >", value, "emali");
            return (Criteria) this;
        }

        public Criteria andEmaliGreaterThanOrEqualTo(String value) {
            addCriterion("emali >=", value, "emali");
            return (Criteria) this;
        }

        public Criteria andEmaliLessThan(String value) {
            addCriterion("emali <", value, "emali");
            return (Criteria) this;
        }

        public Criteria andEmaliLessThanOrEqualTo(String value) {
            addCriterion("emali <=", value, "emali");
            return (Criteria) this;
        }

        public Criteria andEmaliLike(String value) {
            addCriterion("emali like", value, "emali");
            return (Criteria) this;
        }

        public Criteria andEmaliNotLike(String value) {
            addCriterion("emali not like", value, "emali");
            return (Criteria) this;
        }

        public Criteria andEmaliIn(List<String> values) {
            addCriterion("emali in", values, "emali");
            return (Criteria) this;
        }

        public Criteria andEmaliNotIn(List<String> values) {
            addCriterion("emali not in", values, "emali");
            return (Criteria) this;
        }

        public Criteria andEmaliBetween(String value1, String value2) {
            addCriterion("emali between", value1, value2, "emali");
            return (Criteria) this;
        }

        public Criteria andEmaliNotBetween(String value1, String value2) {
            addCriterion("emali not between", value1, value2, "emali");
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