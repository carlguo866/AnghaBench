; ModuleID = '/home/carl/AnghaBench/esp-idf/components/fatfs/src/extr_ff.c_dir_remove.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/fatfs/src/extr_ff.c_dir_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32*, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32 }

@FR_OK = common dso_local global i64 0, align 8
@DDEM = common dso_local global i8* null, align 8
@DIR_Name = common dso_local global i64 0, align 8
@FF_FS_EXFAT = common dso_local global i64 0, align 8
@FR_INT_ERR = common dso_local global i64 0, align 8
@FR_NO_FILE = common dso_local global i64 0, align 8
@FS_EXFAT = common dso_local global i64 0, align 8
@XDIR_Type = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*)* @dir_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dir_remove(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %4, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @move_window(%struct.TYPE_10__* %9, i32 %12)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @FR_OK, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load i8*, i8** @DDEM, align 8
  %19 = ptrtoint i8* %18 to i32
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @DIR_Name, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32 %19, i32* %24, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  store i32 1, i32* %26, align 8
  br label %27

27:                                               ; preds = %17, %1
  %28 = load i64, i64* %3, align 8
  ret i64 %28
}

declare dso_local i64 @move_window(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
