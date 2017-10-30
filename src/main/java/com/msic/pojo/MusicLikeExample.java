package com.msic.pojo;

import java.util.ArrayList;
import java.util.List;

public class MusicLikeExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public MusicLikeExample() {
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

        public Criteria andMsicIdIsNull() {
            addCriterion("msic_id is null");
            return (Criteria) this;
        }

        public Criteria andMsicIdIsNotNull() {
            addCriterion("msic_id is not null");
            return (Criteria) this;
        }

        public Criteria andMsicIdEqualTo(Integer value) {
            addCriterion("msic_id =", value, "msicId");
            return (Criteria) this;
        }

        public Criteria andMsicIdNotEqualTo(Integer value) {
            addCriterion("msic_id <>", value, "msicId");
            return (Criteria) this;
        }

        public Criteria andMsicIdGreaterThan(Integer value) {
            addCriterion("msic_id >", value, "msicId");
            return (Criteria) this;
        }

        public Criteria andMsicIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("msic_id >=", value, "msicId");
            return (Criteria) this;
        }

        public Criteria andMsicIdLessThan(Integer value) {
            addCriterion("msic_id <", value, "msicId");
            return (Criteria) this;
        }

        public Criteria andMsicIdLessThanOrEqualTo(Integer value) {
            addCriterion("msic_id <=", value, "msicId");
            return (Criteria) this;
        }

        public Criteria andMsicIdIn(List<Integer> values) {
            addCriterion("msic_id in", values, "msicId");
            return (Criteria) this;
        }

        public Criteria andMsicIdNotIn(List<Integer> values) {
            addCriterion("msic_id not in", values, "msicId");
            return (Criteria) this;
        }

        public Criteria andMsicIdBetween(Integer value1, Integer value2) {
            addCriterion("msic_id between", value1, value2, "msicId");
            return (Criteria) this;
        }

        public Criteria andMsicIdNotBetween(Integer value1, Integer value2) {
            addCriterion("msic_id not between", value1, value2, "msicId");
            return (Criteria) this;
        }

        public Criteria andPopularIsNull() {
            addCriterion("popular is null");
            return (Criteria) this;
        }

        public Criteria andPopularIsNotNull() {
            addCriterion("popular is not null");
            return (Criteria) this;
        }

        public Criteria andPopularEqualTo(Float value) {
            addCriterion("popular =", value, "popular");
            return (Criteria) this;
        }

        public Criteria andPopularNotEqualTo(Float value) {
            addCriterion("popular <>", value, "popular");
            return (Criteria) this;
        }

        public Criteria andPopularGreaterThan(Float value) {
            addCriterion("popular >", value, "popular");
            return (Criteria) this;
        }

        public Criteria andPopularGreaterThanOrEqualTo(Float value) {
            addCriterion("popular >=", value, "popular");
            return (Criteria) this;
        }

        public Criteria andPopularLessThan(Float value) {
            addCriterion("popular <", value, "popular");
            return (Criteria) this;
        }

        public Criteria andPopularLessThanOrEqualTo(Float value) {
            addCriterion("popular <=", value, "popular");
            return (Criteria) this;
        }

        public Criteria andPopularIn(List<Float> values) {
            addCriterion("popular in", values, "popular");
            return (Criteria) this;
        }

        public Criteria andPopularNotIn(List<Float> values) {
            addCriterion("popular not in", values, "popular");
            return (Criteria) this;
        }

        public Criteria andPopularBetween(Float value1, Float value2) {
            addCriterion("popular between", value1, value2, "popular");
            return (Criteria) this;
        }

        public Criteria andPopularNotBetween(Float value1, Float value2) {
            addCriterion("popular not between", value1, value2, "popular");
            return (Criteria) this;
        }

        public Criteria andBalladIsNull() {
            addCriterion("ballad is null");
            return (Criteria) this;
        }

        public Criteria andBalladIsNotNull() {
            addCriterion("ballad is not null");
            return (Criteria) this;
        }

        public Criteria andBalladEqualTo(Float value) {
            addCriterion("ballad =", value, "ballad");
            return (Criteria) this;
        }

        public Criteria andBalladNotEqualTo(Float value) {
            addCriterion("ballad <>", value, "ballad");
            return (Criteria) this;
        }

        public Criteria andBalladGreaterThan(Float value) {
            addCriterion("ballad >", value, "ballad");
            return (Criteria) this;
        }

        public Criteria andBalladGreaterThanOrEqualTo(Float value) {
            addCriterion("ballad >=", value, "ballad");
            return (Criteria) this;
        }

        public Criteria andBalladLessThan(Float value) {
            addCriterion("ballad <", value, "ballad");
            return (Criteria) this;
        }

        public Criteria andBalladLessThanOrEqualTo(Float value) {
            addCriterion("ballad <=", value, "ballad");
            return (Criteria) this;
        }

        public Criteria andBalladIn(List<Float> values) {
            addCriterion("ballad in", values, "ballad");
            return (Criteria) this;
        }

        public Criteria andBalladNotIn(List<Float> values) {
            addCriterion("ballad not in", values, "ballad");
            return (Criteria) this;
        }

        public Criteria andBalladBetween(Float value1, Float value2) {
            addCriterion("ballad between", value1, value2, "ballad");
            return (Criteria) this;
        }

        public Criteria andBalladNotBetween(Float value1, Float value2) {
            addCriterion("ballad not between", value1, value2, "ballad");
            return (Criteria) this;
        }

        public Criteria andRockIsNull() {
            addCriterion("rock is null");
            return (Criteria) this;
        }

        public Criteria andRockIsNotNull() {
            addCriterion("rock is not null");
            return (Criteria) this;
        }

        public Criteria andRockEqualTo(Float value) {
            addCriterion("rock =", value, "rock");
            return (Criteria) this;
        }

        public Criteria andRockNotEqualTo(Float value) {
            addCriterion("rock <>", value, "rock");
            return (Criteria) this;
        }

        public Criteria andRockGreaterThan(Float value) {
            addCriterion("rock >", value, "rock");
            return (Criteria) this;
        }

        public Criteria andRockGreaterThanOrEqualTo(Float value) {
            addCriterion("rock >=", value, "rock");
            return (Criteria) this;
        }

        public Criteria andRockLessThan(Float value) {
            addCriterion("rock <", value, "rock");
            return (Criteria) this;
        }

        public Criteria andRockLessThanOrEqualTo(Float value) {
            addCriterion("rock <=", value, "rock");
            return (Criteria) this;
        }

        public Criteria andRockIn(List<Float> values) {
            addCriterion("rock in", values, "rock");
            return (Criteria) this;
        }

        public Criteria andRockNotIn(List<Float> values) {
            addCriterion("rock not in", values, "rock");
            return (Criteria) this;
        }

        public Criteria andRockBetween(Float value1, Float value2) {
            addCriterion("rock between", value1, value2, "rock");
            return (Criteria) this;
        }

        public Criteria andRockNotBetween(Float value1, Float value2) {
            addCriterion("rock not between", value1, value2, "rock");
            return (Criteria) this;
        }

        public Criteria andFolkIsNull() {
            addCriterion("folk is null");
            return (Criteria) this;
        }

        public Criteria andFolkIsNotNull() {
            addCriterion("folk is not null");
            return (Criteria) this;
        }

        public Criteria andFolkEqualTo(Float value) {
            addCriterion("folk =", value, "folk");
            return (Criteria) this;
        }

        public Criteria andFolkNotEqualTo(Float value) {
            addCriterion("folk <>", value, "folk");
            return (Criteria) this;
        }

        public Criteria andFolkGreaterThan(Float value) {
            addCriterion("folk >", value, "folk");
            return (Criteria) this;
        }

        public Criteria andFolkGreaterThanOrEqualTo(Float value) {
            addCriterion("folk >=", value, "folk");
            return (Criteria) this;
        }

        public Criteria andFolkLessThan(Float value) {
            addCriterion("folk <", value, "folk");
            return (Criteria) this;
        }

        public Criteria andFolkLessThanOrEqualTo(Float value) {
            addCriterion("folk <=", value, "folk");
            return (Criteria) this;
        }

        public Criteria andFolkIn(List<Float> values) {
            addCriterion("folk in", values, "folk");
            return (Criteria) this;
        }

        public Criteria andFolkNotIn(List<Float> values) {
            addCriterion("folk not in", values, "folk");
            return (Criteria) this;
        }

        public Criteria andFolkBetween(Float value1, Float value2) {
            addCriterion("folk between", value1, value2, "folk");
            return (Criteria) this;
        }

        public Criteria andFolkNotBetween(Float value1, Float value2) {
            addCriterion("folk not between", value1, value2, "folk");
            return (Criteria) this;
        }

        public Criteria andElectronicaIsNull() {
            addCriterion("Electronica is null");
            return (Criteria) this;
        }

        public Criteria andElectronicaIsNotNull() {
            addCriterion("Electronica is not null");
            return (Criteria) this;
        }

        public Criteria andElectronicaEqualTo(Float value) {
            addCriterion("Electronica =", value, "electronica");
            return (Criteria) this;
        }

        public Criteria andElectronicaNotEqualTo(Float value) {
            addCriterion("Electronica <>", value, "electronica");
            return (Criteria) this;
        }

        public Criteria andElectronicaGreaterThan(Float value) {
            addCriterion("Electronica >", value, "electronica");
            return (Criteria) this;
        }

        public Criteria andElectronicaGreaterThanOrEqualTo(Float value) {
            addCriterion("Electronica >=", value, "electronica");
            return (Criteria) this;
        }

        public Criteria andElectronicaLessThan(Float value) {
            addCriterion("Electronica <", value, "electronica");
            return (Criteria) this;
        }

        public Criteria andElectronicaLessThanOrEqualTo(Float value) {
            addCriterion("Electronica <=", value, "electronica");
            return (Criteria) this;
        }

        public Criteria andElectronicaIn(List<Float> values) {
            addCriterion("Electronica in", values, "electronica");
            return (Criteria) this;
        }

        public Criteria andElectronicaNotIn(List<Float> values) {
            addCriterion("Electronica not in", values, "electronica");
            return (Criteria) this;
        }

        public Criteria andElectronicaBetween(Float value1, Float value2) {
            addCriterion("Electronica between", value1, value2, "electronica");
            return (Criteria) this;
        }

        public Criteria andElectronicaNotBetween(Float value1, Float value2) {
            addCriterion("Electronica not between", value1, value2, "electronica");
            return (Criteria) this;
        }

        public Criteria andDanceIsNull() {
            addCriterion("dance is null");
            return (Criteria) this;
        }

        public Criteria andDanceIsNotNull() {
            addCriterion("dance is not null");
            return (Criteria) this;
        }

        public Criteria andDanceEqualTo(Float value) {
            addCriterion("dance =", value, "dance");
            return (Criteria) this;
        }

        public Criteria andDanceNotEqualTo(Float value) {
            addCriterion("dance <>", value, "dance");
            return (Criteria) this;
        }

        public Criteria andDanceGreaterThan(Float value) {
            addCriterion("dance >", value, "dance");
            return (Criteria) this;
        }

        public Criteria andDanceGreaterThanOrEqualTo(Float value) {
            addCriterion("dance >=", value, "dance");
            return (Criteria) this;
        }

        public Criteria andDanceLessThan(Float value) {
            addCriterion("dance <", value, "dance");
            return (Criteria) this;
        }

        public Criteria andDanceLessThanOrEqualTo(Float value) {
            addCriterion("dance <=", value, "dance");
            return (Criteria) this;
        }

        public Criteria andDanceIn(List<Float> values) {
            addCriterion("dance in", values, "dance");
            return (Criteria) this;
        }

        public Criteria andDanceNotIn(List<Float> values) {
            addCriterion("dance not in", values, "dance");
            return (Criteria) this;
        }

        public Criteria andDanceBetween(Float value1, Float value2) {
            addCriterion("dance between", value1, value2, "dance");
            return (Criteria) this;
        }

        public Criteria andDanceNotBetween(Float value1, Float value2) {
            addCriterion("dance not between", value1, value2, "dance");
            return (Criteria) this;
        }

        public Criteria andLightIsNull() {
            addCriterion("light is null");
            return (Criteria) this;
        }

        public Criteria andLightIsNotNull() {
            addCriterion("light is not null");
            return (Criteria) this;
        }

        public Criteria andLightEqualTo(Float value) {
            addCriterion("light =", value, "light");
            return (Criteria) this;
        }

        public Criteria andLightNotEqualTo(Float value) {
            addCriterion("light <>", value, "light");
            return (Criteria) this;
        }

        public Criteria andLightGreaterThan(Float value) {
            addCriterion("light >", value, "light");
            return (Criteria) this;
        }

        public Criteria andLightGreaterThanOrEqualTo(Float value) {
            addCriterion("light >=", value, "light");
            return (Criteria) this;
        }

        public Criteria andLightLessThan(Float value) {
            addCriterion("light <", value, "light");
            return (Criteria) this;
        }

        public Criteria andLightLessThanOrEqualTo(Float value) {
            addCriterion("light <=", value, "light");
            return (Criteria) this;
        }

        public Criteria andLightIn(List<Float> values) {
            addCriterion("light in", values, "light");
            return (Criteria) this;
        }

        public Criteria andLightNotIn(List<Float> values) {
            addCriterion("light not in", values, "light");
            return (Criteria) this;
        }

        public Criteria andLightBetween(Float value1, Float value2) {
            addCriterion("light between", value1, value2, "light");
            return (Criteria) this;
        }

        public Criteria andLightNotBetween(Float value1, Float value2) {
            addCriterion("light not between", value1, value2, "light");
            return (Criteria) this;
        }

        public Criteria andClassicalIsNull() {
            addCriterion("classical is null");
            return (Criteria) this;
        }

        public Criteria andClassicalIsNotNull() {
            addCriterion("classical is not null");
            return (Criteria) this;
        }

        public Criteria andClassicalEqualTo(Float value) {
            addCriterion("classical =", value, "classical");
            return (Criteria) this;
        }

        public Criteria andClassicalNotEqualTo(Float value) {
            addCriterion("classical <>", value, "classical");
            return (Criteria) this;
        }

        public Criteria andClassicalGreaterThan(Float value) {
            addCriterion("classical >", value, "classical");
            return (Criteria) this;
        }

        public Criteria andClassicalGreaterThanOrEqualTo(Float value) {
            addCriterion("classical >=", value, "classical");
            return (Criteria) this;
        }

        public Criteria andClassicalLessThan(Float value) {
            addCriterion("classical <", value, "classical");
            return (Criteria) this;
        }

        public Criteria andClassicalLessThanOrEqualTo(Float value) {
            addCriterion("classical <=", value, "classical");
            return (Criteria) this;
        }

        public Criteria andClassicalIn(List<Float> values) {
            addCriterion("classical in", values, "classical");
            return (Criteria) this;
        }

        public Criteria andClassicalNotIn(List<Float> values) {
            addCriterion("classical not in", values, "classical");
            return (Criteria) this;
        }

        public Criteria andClassicalBetween(Float value1, Float value2) {
            addCriterion("classical between", value1, value2, "classical");
            return (Criteria) this;
        }

        public Criteria andClassicalNotBetween(Float value1, Float value2) {
            addCriterion("classical not between", value1, value2, "classical");
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