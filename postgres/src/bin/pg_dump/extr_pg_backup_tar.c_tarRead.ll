; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_tar.c_tarRead.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_tar.c_tarRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, %struct.TYPE_4__*)* @tarRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tarRead(i8* %0, i64 %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %6, align 8
  %13 = add i64 %11, %12
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ugt i64 %13, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %21, %24
  store i64 %25, i64* %6, align 8
  br label %26

26:                                               ; preds = %18, %3
  %27 = load i64, i64* %6, align 8
  %28 = icmp ule i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i64 0, i64* %4, align 8
  br label %44

30:                                               ; preds = %26
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %37 = call i64 @_tarReadRaw(i32 %33, i8* %34, i64 %35, %struct.TYPE_4__* %36, i32* null)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %41, %38
  store i64 %42, i64* %40, align 8
  %43 = load i64, i64* %8, align 8
  store i64 %43, i64* %4, align 8
  br label %44

44:                                               ; preds = %30, %29
  %45 = load i64, i64* %4, align 8
  ret i64 %45
}

declare dso_local i64 @_tarReadRaw(i32, i8*, i64, %struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
