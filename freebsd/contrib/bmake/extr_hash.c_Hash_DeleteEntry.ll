; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_hash.c_Hash_DeleteEntry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_hash.c_Hash_DeleteEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i64, %struct.TYPE_7__* }

@.str = private unnamed_addr constant [30 x i8] c"bad call to Hash_DeleteEntry\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Hash_DeleteEntry(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__**, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = icmp eq %struct.TYPE_7__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %48

10:                                               ; preds = %2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %12, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = and i64 %16, %19
  %21 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %13, i64 %20
  store %struct.TYPE_7__** %21, %struct.TYPE_7__*** %5, align 8
  br label %22

22:                                               ; preds = %42, %10
  %23 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %6, align 8
  %25 = icmp ne %struct.TYPE_7__* %24, null
  br i1 %25, label %26, label %45

26:                                               ; preds = %22
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = icmp eq %struct.TYPE_7__* %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %34, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = call i32 @free(%struct.TYPE_7__* %35)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 8
  br label %48

41:                                               ; preds = %26
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  store %struct.TYPE_7__** %44, %struct.TYPE_7__*** %5, align 8
  br label %22

45:                                               ; preds = %22
  %46 = call i32 @write(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 29)
  %47 = call i32 (...) @abort() #3
  unreachable

48:                                               ; preds = %30, %9
  ret void
}

declare dso_local i32 @free(%struct.TYPE_7__*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
