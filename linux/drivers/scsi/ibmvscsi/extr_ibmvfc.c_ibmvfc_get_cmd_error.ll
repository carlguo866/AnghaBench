; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_get_cmd_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_get_cmd_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@cmd_status = common dso_local global %struct.TYPE_2__* null, align 8
@unknown_error = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32)* @ibmvfc_get_cmd_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ibmvfc_get_cmd_error(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @ibmvfc_get_err_index(i32 %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cmd_status, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %3, align 8
  br label %21

19:                                               ; preds = %2
  %20 = load i8*, i8** @unknown_error, align 8
  store i8* %20, i8** %3, align 8
  br label %21

21:                                               ; preds = %19, %12
  %22 = load i8*, i8** %3, align 8
  ret i8* %22
}

declare dso_local i32 @ibmvfc_get_err_index(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
