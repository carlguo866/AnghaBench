; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_cparse.c_cp_comment_c.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_cparse.c_cp_comment_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @cp_comment_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_comment_c(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  br label %3

3:                                                ; preds = %35, %1
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = call signext i8 @cp_get(%struct.TYPE_5__* %4)
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 42
  br i1 %7, label %8, label %25

8:                                                ; preds = %3
  br label %9

9:                                                ; preds = %18, %8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = call signext i8 @cp_get(%struct.TYPE_5__* %10)
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 47
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = call signext i8 @cp_get(%struct.TYPE_5__* %15)
  br label %41

17:                                               ; preds = %9
  br label %18

18:                                               ; preds = %17
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 42
  br i1 %23, label %9, label %24

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24, %3
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i8, i8* %27, align 1
  %29 = call i64 @cp_iseol(i8 signext %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = call i32 @cp_newline(%struct.TYPE_5__* %32)
  br label %34

34:                                               ; preds = %31, %25
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %3, label %41

41:                                               ; preds = %14, %35
  ret void
}

declare dso_local signext i8 @cp_get(%struct.TYPE_5__*) #1

declare dso_local i64 @cp_iseol(i8 signext) #1

declare dso_local i32 @cp_newline(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
