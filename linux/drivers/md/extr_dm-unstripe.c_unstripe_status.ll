; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-unstripe.c_unstripe_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-unstripe.c_unstripe_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.unstripe_c* }
%struct.unstripe_c = type { i64, %struct.TYPE_2__*, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"%d %llu %d %s %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*, i32, i32, i8*, i32)* @unstripe_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unstripe_status(%struct.dm_target* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.unstripe_c*, align 8
  %12 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %14 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %13, i32 0, i32 0
  %15 = load %struct.unstripe_c*, %struct.unstripe_c** %14, align 8
  store %struct.unstripe_c* %15, %struct.unstripe_c** %11, align 8
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %37 [
    i32 129, label %17
    i32 128, label %18
  ]

17:                                               ; preds = %5
  br label %37

18:                                               ; preds = %5
  %19 = load %struct.unstripe_c*, %struct.unstripe_c** %11, align 8
  %20 = getelementptr inbounds %struct.unstripe_c, %struct.unstripe_c* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.unstripe_c*, %struct.unstripe_c** %11, align 8
  %23 = getelementptr inbounds %struct.unstripe_c, %struct.unstripe_c* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.unstripe_c*, %struct.unstripe_c** %11, align 8
  %26 = getelementptr inbounds %struct.unstripe_c, %struct.unstripe_c* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.unstripe_c*, %struct.unstripe_c** %11, align 8
  %29 = getelementptr inbounds %struct.unstripe_c, %struct.unstripe_c* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.unstripe_c*, %struct.unstripe_c** %11, align 8
  %34 = getelementptr inbounds %struct.unstripe_c, %struct.unstripe_c* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @DMEMIT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %21, i64 %24, i32 %27, i32 %32, i64 %35)
  br label %37

37:                                               ; preds = %5, %18, %17
  ret void
}

declare dso_local i32 @DMEMIT(i8*, i32, i64, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
