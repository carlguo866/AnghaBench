; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_lparser.c_exprstat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_lparser.c_exprstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, i32* }
%struct.TYPE_9__ = type { i8 }
%struct.LHS_assign = type { %struct.TYPE_11__, i32* }
%struct.TYPE_11__ = type { i64 }

@VCALL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @exprstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exprstat(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.LHS_assign, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  store i32* %7, i32** %3, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %9 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %4, i32 0, i32 0
  %10 = call i32 @suffixedexp(%struct.TYPE_10__* %8, %struct.TYPE_11__* %9)
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i8, i8* %13, align 8
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 61
  br i1 %16, label %24, label %17

17:                                               ; preds = %1
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i8, i8* %20, align 8
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 44
  br i1 %23, label %24, label %28

24:                                               ; preds = %17, %1
  %25 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %4, i32 0, i32 1
  store i32* null, i32** %25, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %27 = call i32 @assignment(%struct.TYPE_10__* %26, %struct.LHS_assign* %4, i32 1)
  br label %41

28:                                               ; preds = %17
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %30 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %4, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @VCALL, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @check_condition(%struct.TYPE_10__* %29, i32 %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %37 = load i32*, i32** %3, align 8
  %38 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %4, i32 0, i32 0
  %39 = call i32 @getinstruction(i32* %37, %struct.TYPE_11__* %38)
  %40 = call i32 @SETARG_C(i32 %39, i32 1)
  br label %41

41:                                               ; preds = %28, %24
  ret void
}

declare dso_local i32 @suffixedexp(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @assignment(%struct.TYPE_10__*, %struct.LHS_assign*, i32) #1

declare dso_local i32 @check_condition(%struct.TYPE_10__*, i32, i8*) #1

declare dso_local i32 @SETARG_C(i32, i32) #1

declare dso_local i32 @getinstruction(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
