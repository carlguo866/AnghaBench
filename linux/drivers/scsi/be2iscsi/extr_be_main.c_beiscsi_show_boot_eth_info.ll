; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_show_boot_eth_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_show_boot_eth_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@BEISCSI_SYSFS_ISCSI_BOOT_FLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @beiscsi_show_boot_eth_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_show_boot_eth_info(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.beiscsi_hba*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.beiscsi_hba*
  store %struct.beiscsi_hba* %11, %struct.beiscsi_hba** %7, align 8
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %8, align 8
  %13 = load i32, i32* @EPERM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %27 [
    i32 130, label %16
    i32 129, label %20
    i32 128, label %23
  ]

16:                                               ; preds = %3
  %17 = load i8*, i8** %8, align 8
  %18 = load i32, i32* @BEISCSI_SYSFS_ISCSI_BOOT_FLAGS, align 4
  %19 = call i32 (i8*, i8*, ...) @sprintf(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 %19, i32* %9, align 4
  br label %27

20:                                               ; preds = %3
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 (i8*, i8*, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %22, i32* %9, align 4
  br label %27

23:                                               ; preds = %3
  %24 = load i8*, i8** %8, align 8
  %25 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %7, align 8
  %26 = call i32 @beiscsi_get_macaddr(i8* %24, %struct.beiscsi_hba* %25)
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %3, %23, %20, %16
  %28 = load i32, i32* %9, align 4
  ret i32 %28
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @beiscsi_get_macaddr(i8*, %struct.beiscsi_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
