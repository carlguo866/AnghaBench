; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lnbp21.c_lnbp21_set_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lnbp21.c_lnbp21_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i64 }
%struct.lnbp21 = type { i32, i32, i32, i32, i32 }
%struct.i2c_msg = type { i32*, i32, i32, i32 }

@LNBP21_VSEL = common dso_local global i32 0, align 4
@LNBP21_EN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @lnbp21_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lnbp21_set_voltage(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lnbp21*, align 8
  %7 = alloca %struct.i2c_msg, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.lnbp21*
  store %struct.lnbp21* %11, %struct.lnbp21** %6, align 8
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 0
  %13 = load %struct.lnbp21*, %struct.lnbp21** %6, align 8
  %14 = getelementptr inbounds %struct.lnbp21, %struct.lnbp21* %13, i32 0, i32 0
  store i32* %14, i32** %12, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 1
  store i32 4, i32* %15, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 2
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 3
  %18 = load %struct.lnbp21*, %struct.lnbp21** %6, align 8
  %19 = getelementptr inbounds %struct.lnbp21, %struct.lnbp21* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %17, align 8
  %21 = load i32, i32* @LNBP21_VSEL, align 4
  %22 = load i32, i32* @LNBP21_EN, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load %struct.lnbp21*, %struct.lnbp21** %6, align 8
  %26 = getelementptr inbounds %struct.lnbp21, %struct.lnbp21* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* %5, align 4
  switch i32 %29, label %45 [
    i32 128, label %30
    i32 130, label %31
    i32 129, label %37
  ]

30:                                               ; preds = %2
  br label %48

31:                                               ; preds = %2
  %32 = load i32, i32* @LNBP21_EN, align 4
  %33 = load %struct.lnbp21*, %struct.lnbp21** %6, align 8
  %34 = getelementptr inbounds %struct.lnbp21, %struct.lnbp21* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %48

37:                                               ; preds = %2
  %38 = load i32, i32* @LNBP21_EN, align 4
  %39 = load i32, i32* @LNBP21_VSEL, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.lnbp21*, %struct.lnbp21** %6, align 8
  %42 = getelementptr inbounds %struct.lnbp21, %struct.lnbp21* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %48

45:                                               ; preds = %2
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %74

48:                                               ; preds = %37, %31, %30
  %49 = load %struct.lnbp21*, %struct.lnbp21** %6, align 8
  %50 = getelementptr inbounds %struct.lnbp21, %struct.lnbp21* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.lnbp21*, %struct.lnbp21** %6, align 8
  %53 = getelementptr inbounds %struct.lnbp21, %struct.lnbp21* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.lnbp21*, %struct.lnbp21** %6, align 8
  %57 = getelementptr inbounds %struct.lnbp21, %struct.lnbp21* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.lnbp21*, %struct.lnbp21** %6, align 8
  %60 = getelementptr inbounds %struct.lnbp21, %struct.lnbp21* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load %struct.lnbp21*, %struct.lnbp21** %6, align 8
  %64 = getelementptr inbounds %struct.lnbp21, %struct.lnbp21* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @i2c_transfer(i32 %65, %struct.i2c_msg* %7, i32 1)
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %69

68:                                               ; preds = %48
  br label %72

69:                                               ; preds = %48
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  br label %72

72:                                               ; preds = %69, %68
  %73 = phi i32 [ 0, %68 ], [ %71, %69 ]
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %45
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
