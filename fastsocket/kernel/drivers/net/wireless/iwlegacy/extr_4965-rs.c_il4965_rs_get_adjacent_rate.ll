; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-rs.c_il4965_rs_get_adjacent_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-rs.c_il4965_rs_get_adjacent_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.il_priv = type { i32 }

@RATE_INVALID = common dso_local global i32 0, align 4
@RATE_COUNT = common dso_local global i32 0, align 4
@il_rates = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"Skipping masked lower rate: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Skipping masked higher rate: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, i32, i32, i32)* @il4965_rs_get_adjacent_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_rs_get_adjacent_rate(%struct.il_priv* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.il_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @RATE_INVALID, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @RATE_INVALID, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i64 @is_a_band(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @is_legacy(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %71, label %23

23:                                               ; preds = %19, %4
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = shl i32 1, %26
  store i32 %27, i32* %13, align 4
  br label %28

28:                                               ; preds = %39, %23
  %29 = load i32, i32* %12, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %13, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %11, align 4
  br label %44

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = ashr i32 %42, 1
  store i32 %43, i32* %13, align 4
  br label %28

44:                                               ; preds = %36, %28
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = shl i32 1, %47
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %61, %44
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @RATE_COUNT, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %49
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %13, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %10, align 4
  br label %66

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %13, align 4
  %65 = shl i32 %64, 1
  store i32 %65, i32* %13, align 4
  br label %49

66:                                               ; preds = %58, %49
  %67 = load i32, i32* %10, align 4
  %68 = shl i32 %67, 8
  %69 = load i32, i32* %11, align 4
  %70 = or i32 %68, %69
  store i32 %70, i32* %5, align 4
  br label %130

71:                                               ; preds = %19
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %95, %71
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @RATE_INVALID, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %98

77:                                               ; preds = %73
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @il_rates, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @RATE_INVALID, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  br label %98

88:                                               ; preds = %77
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %11, align 4
  %91 = shl i32 1, %90
  %92 = and i32 %89, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %98

95:                                               ; preds = %88
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @D_RATE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %96)
  br label %73

98:                                               ; preds = %94, %87, %73
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %122, %98
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @RATE_INVALID, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %125

104:                                              ; preds = %100
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @il_rates, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* @RATE_INVALID, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %104
  br label %125

115:                                              ; preds = %104
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %10, align 4
  %118 = shl i32 1, %117
  %119 = and i32 %116, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %125

122:                                              ; preds = %115
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @D_RATE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %123)
  br label %100

125:                                              ; preds = %121, %114, %100
  %126 = load i32, i32* %10, align 4
  %127 = shl i32 %126, 8
  %128 = load i32, i32* %11, align 4
  %129 = or i32 %127, %128
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %125, %66
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i64 @is_a_band(i32) #1

declare dso_local i32 @is_legacy(i32) #1

declare dso_local i32 @D_RATE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
