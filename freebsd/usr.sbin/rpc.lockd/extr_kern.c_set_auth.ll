; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_kern.c_set_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_kern.c_set_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_8__*)* }
%struct.xucred = type { i32, i32*, i32 }

@NGRPS = common dso_local global i32 0, align 4
@hostname = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_auth(%struct.TYPE_7__* %0, %struct.xucred* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.xucred*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.xucred* %1, %struct.xucred** %4, align 8
  %6 = load %struct.xucred*, %struct.xucred** %4, align 8
  %7 = getelementptr inbounds %struct.xucred, %struct.xucred* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sub nsw i32 %8, 1
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @NGRPS, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @NGRPS, align 4
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %13, %2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = icmp ne %struct.TYPE_8__* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %26, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = call i32 %27(%struct.TYPE_8__* %30)
  br label %32

32:                                               ; preds = %20, %15
  %33 = load i32, i32* @hostname, align 4
  %34 = load %struct.xucred*, %struct.xucred** %4, align 8
  %35 = getelementptr inbounds %struct.xucred, %struct.xucred* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.xucred*, %struct.xucred** %4, align 8
  %38 = getelementptr inbounds %struct.xucred, %struct.xucred* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.xucred*, %struct.xucred** %4, align 8
  %44 = getelementptr inbounds %struct.xucred, %struct.xucred* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = call %struct.TYPE_8__* @authunix_create(i32 %33, i32 %36, i32 %41, i32 %42, i32* %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store %struct.TYPE_8__* %47, %struct.TYPE_8__** %49, align 8
  ret void
}

declare dso_local %struct.TYPE_8__* @authunix_create(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
