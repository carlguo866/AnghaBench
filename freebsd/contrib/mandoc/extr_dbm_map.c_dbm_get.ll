; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_dbm_map.c_dbm_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_dbm_map.c_dbm_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"dbm_get: Database corrupt: offset %d\00", align 1
@max_offset = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"dbm_get: Database corrupt: offset %d > %d\00", align 1
@dbm_base = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dbm_get(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i64 @be32toh(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = call i32 (i8*, i64, ...) @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %9)
  store i8* null, i8** %2, align 8
  br label %23

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @max_offset, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @max_offset, align 8
  %18 = call i32 (i8*, i64, ...) @warnx(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %16, i64 %17)
  store i8* null, i8** %2, align 8
  br label %23

19:                                               ; preds = %11
  %20 = load i8*, i8** @dbm_base, align 8
  %21 = load i64, i64* %3, align 8
  %22 = getelementptr i8, i8* %20, i64 %21
  store i8* %22, i8** %2, align 8
  br label %23

23:                                               ; preds = %19, %15, %8
  %24 = load i8*, i8** %2, align 8
  ret i8* %24
}

declare dso_local i64 @be32toh(i64) #1

declare dso_local i32 @warnx(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
