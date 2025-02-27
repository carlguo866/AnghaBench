; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_emulate_tpu_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_emulate_tpu_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.se_dev_attrib = type { i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Generic Block Discard not supported\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"dev[%p]: SE Device Thin Provisioning UNMAP bit: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*, i64)* @emulate_tpu_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulate_tpu_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.se_dev_attrib*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.config_item*, %struct.config_item** %5, align 8
  %12 = call %struct.se_dev_attrib* @to_attrib(%struct.config_item* %11)
  store %struct.se_dev_attrib* %12, %struct.se_dev_attrib** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @strtobool(i8* %13, i32* %9)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %4, align 4
  br label %42

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load %struct.se_dev_attrib*, %struct.se_dev_attrib** %8, align 8
  %24 = getelementptr inbounds %struct.se_dev_attrib, %struct.se_dev_attrib* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENOSYS, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %42

31:                                               ; preds = %22, %19
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.se_dev_attrib*, %struct.se_dev_attrib** %8, align 8
  %34 = getelementptr inbounds %struct.se_dev_attrib, %struct.se_dev_attrib* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.se_dev_attrib*, %struct.se_dev_attrib** %8, align 8
  %36 = getelementptr inbounds %struct.se_dev_attrib, %struct.se_dev_attrib* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load i64, i64* %7, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %31, %27, %17
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.se_dev_attrib* @to_attrib(%struct.config_item*) #1

declare dso_local i32 @strtobool(i8*, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
