; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_bondport_disable_distributing.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_bondport_disable_distributing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__** }

@g_bond = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"[%s] Distribution Disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @bondport_disable_distributing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bondport_disable_distributing(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_9__**, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = call i64 @bondport_flags_distributing(%struct.TYPE_9__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %75

11:                                               ; preds = %1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %4, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %16, align 8
  store %struct.TYPE_9__** %17, %struct.TYPE_9__*** %3, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %56, %11
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %59

25:                                               ; preds = %21
  %26 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %26, i64 %28
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %32 = icmp eq %struct.TYPE_9__* %30, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %25
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %51, %33
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %5, align 4
  %38 = sub nsw i32 %37, 1
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %35
  %41 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %41, i64 %44
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %47, i64 %49
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %50, align 8
  br label %51

51:                                               ; preds = %40
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %35

54:                                               ; preds = %35
  br label %59

55:                                               ; preds = %25
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %21

59:                                               ; preds = %54, %21
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %61, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** @g_bond, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %70 = call i32 @bondport_get_name(%struct.TYPE_9__* %69)
  %71 = call i32 @timestamp_printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %68, %59
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %74 = call i32 @bondport_flags_clear_distributing(%struct.TYPE_9__* %73)
  br label %75

75:                                               ; preds = %72, %1
  ret void
}

declare dso_local i64 @bondport_flags_distributing(%struct.TYPE_9__*) #1

declare dso_local i32 @timestamp_printf(i8*, i32) #1

declare dso_local i32 @bondport_get_name(%struct.TYPE_9__*) #1

declare dso_local i32 @bondport_flags_clear_distributing(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
