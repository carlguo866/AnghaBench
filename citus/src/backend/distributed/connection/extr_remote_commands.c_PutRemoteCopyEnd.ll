; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/connection/extr_remote_commands.c_PutRemoteCopyEnd.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/connection/extr_remote_commands.c_PutRemoteCopyEnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32* }

@CONNECTION_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PutRemoteCopyEnd(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = call i64 @PQstatus(i32* %12)
  %14 = load i64, i64* @CONNECTION_OK, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

17:                                               ; preds = %2
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @PQisnonblocking(i32* %18)
  %20 = call i32 @Assert(i32 %19)
  %21 = load i32*, i32** %6, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @PQputCopyEnd(i32* %21, i8* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %33

27:                                               ; preds = %17
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @FinishConnectionIO(%struct.TYPE_4__* %30, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %27, %26, %16
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @PQstatus(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @PQisnonblocking(i32*) #1

declare dso_local i32 @PQputCopyEnd(i32*, i8*) #1

declare dso_local i32 @FinishConnectionIO(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
