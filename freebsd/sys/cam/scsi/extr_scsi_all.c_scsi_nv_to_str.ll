; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_nv_to_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_nv_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_nv = type { i64, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @scsi_nv_to_str(%struct.scsi_nv* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.scsi_nv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.scsi_nv* %0, %struct.scsi_nv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %30, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %9
  %14 = load %struct.scsi_nv*, %struct.scsi_nv** %5, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.scsi_nv, %struct.scsi_nv* %14, i64 %16
  %18 = getelementptr inbounds %struct.scsi_nv, %struct.scsi_nv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %13
  %23 = load %struct.scsi_nv*, %struct.scsi_nv** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.scsi_nv, %struct.scsi_nv* %23, i64 %25
  %27 = getelementptr inbounds %struct.scsi_nv, %struct.scsi_nv* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %4, align 8
  br label %34

29:                                               ; preds = %13
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %9

33:                                               ; preds = %9
  store i8* null, i8** %4, align 8
  br label %34

34:                                               ; preds = %33, %22
  %35 = load i8*, i8** %4, align 8
  ret i8* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
