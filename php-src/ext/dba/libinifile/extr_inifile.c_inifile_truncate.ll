; ModuleID = '/home/carl/AnghaBench/php-src/ext/dba/libinifile/extr_inifile.c_inifile_truncate.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/dba/libinifile/extr_inifile.c_inifile_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Error in ftruncate: %d\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64)* @inifile_truncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inifile_truncate(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @php_stream_truncate_set_size(i32 %9, i64 %10)
  store i32 %11, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32, i32* @E_WARNING, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @php_error_docref(i32* null, i32 %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @FAILURE, align 4
  store i32 %17, i32* %3, align 4
  br label %26

18:                                               ; preds = %2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %5, align 8
  %23 = load i32, i32* @SEEK_SET, align 4
  %24 = call i32 @php_stream_seek(i32 %21, i64 %22, i32 %23)
  %25 = load i32, i32* @SUCCESS, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %18, %13
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @php_stream_truncate_set_size(i32, i64) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*, i32) #1

declare dso_local i32 @php_stream_seek(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
