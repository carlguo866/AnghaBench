; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_initthread.c_init_thread_stop.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_initthread.c_init_thread_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, %struct.TYPE_4__*, i32 (i8*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_4__**)* @init_thread_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_thread_stop(i8* %0, %struct.TYPE_4__** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__**, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_4__** %1, %struct.TYPE_4__*** %4, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %6, align 8
  %7 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %8 = icmp eq %struct.TYPE_4__** %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %51

10:                                               ; preds = %2
  %11 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %5, align 8
  br label %13

13:                                               ; preds = %48, %25, %10
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %51

16:                                               ; preds = %13
  %17 = load i8*, i8** %3, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = icmp ne i8* %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %5, align 8
  br label %13

29:                                               ; preds = %19, %16
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32 (i8*)*, i32 (i8*)** %31, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 %32(i8* %35)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %6, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %5, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %42 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = icmp eq %struct.TYPE_4__* %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %29
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %47, align 8
  br label %48

48:                                               ; preds = %45, %29
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %50 = call i32 @OPENSSL_free(%struct.TYPE_4__* %49)
  br label %13

51:                                               ; preds = %9, %13
  ret void
}

declare dso_local i32 @OPENSSL_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
