; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_mvsw61xx.c_mvsw61xx_vlan_port_config.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_mvsw61xx.c_mvsw61xx_vlan_port_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.mvsw61xx_state = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i64, i32 }

@MV_VTUCTL_EGRESS_TAGGED = common dso_local global i32 0, align 4
@MV_8021Q_MODE_SECURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.switch_dev*, i32)* @mvsw61xx_vlan_port_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvsw61xx_vlan_port_config(%struct.switch_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.switch_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mvsw61xx_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %9 = call %struct.mvsw61xx_state* @get_state(%struct.switch_dev* %8)
  store %struct.mvsw61xx_state* %9, %struct.mvsw61xx_state** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %108, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %13 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %111

16:                                               ; preds = %10
  %17 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %5, align 8
  %18 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = shl i32 1, %25
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %16
  br label %108

30:                                               ; preds = %16
  %31 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %5, align 8
  %32 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = mul nsw i32 %39, 4
  %41 = ashr i32 %38, %40
  %42 = and i32 %41, 15
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @MV_VTUCTL_EGRESS_TAGGED, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %30
  %47 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %5, align 8
  %48 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %5, align 8
  %56 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  store i32 %54, i32* %61, align 4
  br label %62

62:                                               ; preds = %46, %30
  %63 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %5, align 8
  %64 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %98

72:                                               ; preds = %62
  %73 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %5, align 8
  %74 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %5, align 8
  %82 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %80
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* %4, align 4
  %91 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %5, align 8
  %92 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  store i32 %90, i32* %97, align 4
  br label %107

98:                                               ; preds = %62
  %99 = load i32, i32* @MV_8021Q_MODE_SECURE, align 4
  %100 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %5, align 8
  %101 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  store i32 %99, i32* %106, align 4
  br label %107

107:                                              ; preds = %98, %72
  br label %108

108:                                              ; preds = %107, %29
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %6, align 4
  br label %10

111:                                              ; preds = %10
  ret void
}

declare dso_local %struct.mvsw61xx_state* @get_state(%struct.switch_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
