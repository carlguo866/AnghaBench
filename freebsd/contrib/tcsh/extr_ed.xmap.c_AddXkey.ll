; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.xmap.c_AddXkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.xmap.c_AddXkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"AddXkey: Null extended-key not allowed.\0A\00", align 1
@XK_CMD = common dso_local global i32 0, align 4
@F_XKEY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"AddXkey: sequence-lead-in command not allowed\0A\00", align 1
@Xmap = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AddXkey(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  store i32 %10, i32* %11, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store i64 %14, i64* %15, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = call i32 @CGETS(i32 9, i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %46

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @XK_CMD, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @F_XKEY, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = call i32 @CGETS(i32 9, i32 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %35 = call i32 @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %46

36:                                               ; preds = %27, %23
  %37 = load i32*, i32** @Xmap, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32* @GetFreeNode(%struct.TYPE_9__* %7)
  store i32* %40, i32** @Xmap, align 8
  br label %41

41:                                               ; preds = %39, %36
  %42 = load i32*, i32** @Xmap, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @TryNode(i32* %42, %struct.TYPE_9__* %7, %struct.TYPE_8__* %43, i32 %44)
  br label %46

46:                                               ; preds = %41, %33, %20
  ret void
}

declare dso_local i32 @xprintf(i8*, i32) #1

declare dso_local i32 @CGETS(i32, i32, i8*) #1

declare dso_local i32* @GetFreeNode(%struct.TYPE_9__*) #1

declare dso_local i32 @TryNode(i32*, %struct.TYPE_9__*, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
