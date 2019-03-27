package com.expedia.aquila.core.util;

import org.junit.rules.ExpectedException;
import org.junit.Rule;
import org.junit.Test;

import static org.junit.Assert.assertArrayEquals;

public class MathUtilTest {

    @Rule public final ExpectedException thrown = ExpectedException.none();

    @Test
    public void incrAndLog() {
      assertArrayEquals(new double[]{0.6931471805599453}, MathUtil.incrAndLog(new double[]{1.0}), 0.0);
    }

    @Test
    public void exp() {
      assertArrayEquals(new double[]{Math.E}, MathUtil.exp(new double[]{1.0}), 0.0);
    }

    @Test
    public void expAndDecr() {
      assertArrayEquals(new double[]{1.718281828459045}, MathUtil.expAndDecr(new double[]{1.0}), 0.0);
    }

    @Test
    public void weightedMovingAverageWindowSizeEven() {
      thrown.expect(IllegalArgumentException.class);
      MathUtil.weightedMovingAverage(new double[]{1.0, 2.0}, 2);
      // Method is not expected to return due to exception thrown
    }

    @Test
    public void weightedMovingAverageDataTooSmall() {
      thrown.expect(IllegalArgumentException.class);
      MathUtil.weightedMovingAverage(new double[]{}, 1);
      // Method is not expected to return due to exception thrown
    }

    @Test
    public void weightedMovingAverage() {
      final double[] expected = {1.6666666666666667, 2.0, 2.3333333333333335};
      assertArrayEquals(expected, MathUtil.weightedMovingAverage(new double[]{1.0, 2.0, 3.0}, 3), 0.0);
    }
}
