; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/extr_configfs.c_mdev_link_dbr_size_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/extr_configfs.c_mdev_link_dbr_size_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.mdev_link = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*, i64)* @mdev_link_dbr_size_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdev_link_dbr_size_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mdev_link*, align 8
  %9 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.config_item*, %struct.config_item** %5, align 8
  %11 = call %struct.mdev_link* @to_mdev_link(%struct.config_item* %10)
  store %struct.mdev_link* %11, %struct.mdev_link** %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.mdev_link*, %struct.mdev_link** %8, align 8
  %14 = getelementptr inbounds %struct.mdev_link, %struct.mdev_link* %13, i32 0, i32 0
  %15 = call i32 @kstrtou16(i8* %12, i32 0, i32* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %23

20:                                               ; preds = %3
  %21 = load i64, i64* %7, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %20, %18
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local %struct.mdev_link* @to_mdev_link(%struct.config_item*) #1

declare dso_local i32 @kstrtou16(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
