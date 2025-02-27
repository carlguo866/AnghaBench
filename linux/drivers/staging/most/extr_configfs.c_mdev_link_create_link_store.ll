; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/extr_configfs.c_mdev_link_create_link_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/extr_configfs.c_mdev_link_create_link_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.mdev_link = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@mdev_link_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*, i64)* @mdev_link_create_link_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdev_link_create_link_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mdev_link*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.config_item*, %struct.config_item** %5, align 8
  %12 = call %struct.mdev_link* @to_mdev_link(%struct.config_item* %11)
  store %struct.mdev_link* %12, %struct.mdev_link** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @kstrtobool(i8* %13, i32* %9)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %4, align 4
  br label %46

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* %7, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %4, align 4
  br label %46

25:                                               ; preds = %19
  %26 = load %struct.mdev_link*, %struct.mdev_link** %8, align 8
  %27 = call i32 @set_config_and_add_link(%struct.mdev_link* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp ne i32 %31, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %4, align 4
  br label %46

37:                                               ; preds = %30, %25
  %38 = load %struct.mdev_link*, %struct.mdev_link** %8, align 8
  %39 = getelementptr inbounds %struct.mdev_link, %struct.mdev_link* %38, i32 0, i32 1
  %40 = call i32 @list_add_tail(i32* %39, i32* @mdev_link_list)
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.mdev_link*, %struct.mdev_link** %8, align 8
  %43 = getelementptr inbounds %struct.mdev_link, %struct.mdev_link* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i64, i64* %7, align 8
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %37, %35, %22, %17
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.mdev_link* @to_mdev_link(%struct.config_item*) #1

declare dso_local i32 @kstrtobool(i8*, i32*) #1

declare dso_local i32 @set_config_and_add_link(%struct.mdev_link*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
