; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_class.c_r_anal_class_rename_flag.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_class.c_r_anal_class_rename_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__, i32 (i32, i8*, i32, i32)*, %struct.TYPE_8__* (i32, i8*)* }
%struct.TYPE_7__ = type { i32, i32 (i32, %struct.TYPE_8__*)* }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i8*, i8*)* @r_anal_class_rename_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r_anal_class_rename_flag(%struct.TYPE_9__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %30

11:                                               ; preds = %3
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %11
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32 (i32, %struct.TYPE_8__*)*, i32 (i32, %struct.TYPE_8__*)** %17, align 8
  %19 = icmp ne i32 (i32, %struct.TYPE_8__*)* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %14
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_8__* (i32, i8*)*, %struct.TYPE_8__* (i32, i8*)** %22, align 8
  %24 = icmp ne %struct.TYPE_8__* (i32, i8*)* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i32 (i32, i8*, i32, i32)*, i32 (i32, i8*, i32, i32)** %27, align 8
  %29 = icmp ne i32 (i32, i8*, i32, i32)* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %20, %14, %11, %3
  br label %68

31:                                               ; preds = %25
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_8__* (i32, i8*)*, %struct.TYPE_8__* (i32, i8*)** %33, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call %struct.TYPE_8__* %34(i32 %38, i8* %39)
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %7, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %42 = icmp ne %struct.TYPE_8__* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %31
  br label %68

44:                                               ; preds = %31
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %8, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32 (i32, %struct.TYPE_8__*)*, i32 (i32, %struct.TYPE_8__*)** %50, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %57 = call i32 %51(i32 %55, %struct.TYPE_8__* %56)
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32 (i32, i8*, i32, i32)*, i32 (i32, i8*, i32, i32)** %59, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 %60(i32 %64, i8* %65, i32 %66, i32 0)
  br label %68

68:                                               ; preds = %44, %43, %30
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
