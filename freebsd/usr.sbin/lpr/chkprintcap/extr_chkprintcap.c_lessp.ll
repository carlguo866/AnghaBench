; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/chkprintcap/extr_chkprintcap.c_lessp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/chkprintcap/extr_chkprintcap.c_lessp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirlist = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dirlist*, %struct.dirlist*)* @lessp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lessp(%struct.dirlist* %0, %struct.dirlist* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dirlist*, align 8
  %5 = alloca %struct.dirlist*, align 8
  store %struct.dirlist* %0, %struct.dirlist** %4, align 8
  store %struct.dirlist* %1, %struct.dirlist** %5, align 8
  %6 = load %struct.dirlist*, %struct.dirlist** %4, align 8
  %7 = getelementptr inbounds %struct.dirlist, %struct.dirlist* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.dirlist*, %struct.dirlist** %5, align 8
  %11 = getelementptr inbounds %struct.dirlist, %struct.dirlist* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %9, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.dirlist*, %struct.dirlist** %4, align 8
  %17 = getelementptr inbounds %struct.dirlist, %struct.dirlist* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.dirlist*, %struct.dirlist** %5, align 8
  %21 = getelementptr inbounds %struct.dirlist, %struct.dirlist* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %19, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %3, align 4
  br label %37

26:                                               ; preds = %2
  %27 = load %struct.dirlist*, %struct.dirlist** %4, align 8
  %28 = getelementptr inbounds %struct.dirlist, %struct.dirlist* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.dirlist*, %struct.dirlist** %5, align 8
  %32 = getelementptr inbounds %struct.dirlist, %struct.dirlist* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %30, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %26, %15
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
