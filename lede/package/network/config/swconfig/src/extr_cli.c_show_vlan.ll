; ModuleID = '/home/carl/AnghaBench/lede/package/network/config/swconfig/src/extr_cli.c_show_vlan.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/config/swconfig/src/extr_cli.c_show_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_val = type { i32, i32 }
%struct.switch_attr = type { i32 }

@SWLIB_ATTR_GROUP_VLAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"VLAN %d:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.switch_dev*, i32, i32)* @show_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_vlan(%struct.switch_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.switch_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.switch_val, align 4
  %8 = alloca %struct.switch_attr*, align 8
  store %struct.switch_dev* %0, %struct.switch_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %7, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %3
  %14 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %15 = load i32, i32* @SWLIB_ATTR_GROUP_VLAN, align 4
  %16 = call %struct.switch_attr* @swlib_lookup_attr(%struct.switch_dev* %14, i32 %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.switch_attr* %16, %struct.switch_attr** %8, align 8
  %17 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %18 = load %struct.switch_attr*, %struct.switch_attr** %8, align 8
  %19 = call i64 @swlib_get_attr(%struct.switch_dev* %17, %struct.switch_attr* %18, %struct.switch_val* %7)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %36

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %7, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  br label %36

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27, %3
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %32 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %33 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @show_attrs(%struct.switch_dev* %31, i32 %34, %struct.switch_val* %7)
  br label %36

36:                                               ; preds = %28, %26, %21
  ret void
}

declare dso_local %struct.switch_attr* @swlib_lookup_attr(%struct.switch_dev*, i32, i8*) #1

declare dso_local i64 @swlib_get_attr(%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @show_attrs(%struct.switch_dev*, i32, %struct.switch_val*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
