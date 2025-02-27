; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_execute.c_exec_context_tty_reset.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_execute.c_exec_context_tty_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.TYPE_7__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_7__*)* @exec_context_tty_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exec_context_tty_reset(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = call i32 @assert(%struct.TYPE_8__* %6)
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = call i8* @exec_context_tty_path(%struct.TYPE_8__* %8)
  store i8* %9, i8** %5, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @terminal_vhangup_fd(i64 %25)
  br label %34

27:                                               ; preds = %17, %14
  %28 = load i8*, i8** %5, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @terminal_vhangup(i8* %31)
  br label %33

33:                                               ; preds = %30, %27
  br label %34

34:                                               ; preds = %33, %22
  br label %35

35:                                               ; preds = %34, %2
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %35
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = icmp ne %struct.TYPE_7__* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @reset_terminal_fd(i64 %51, i32 1)
  br label %60

53:                                               ; preds = %43, %40
  %54 = load i8*, i8** %5, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @reset_terminal(i8* %57)
  br label %59

59:                                               ; preds = %56, %53
  br label %60

60:                                               ; preds = %59, %48
  br label %61

61:                                               ; preds = %60, %35
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i8*, i8** %5, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i8*, i8** %5, align 8
  %71 = call i32 @vt_disallocate(i8* %70)
  br label %72

72:                                               ; preds = %69, %66, %61
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_8__*) #1

declare dso_local i8* @exec_context_tty_path(%struct.TYPE_8__*) #1

declare dso_local i32 @terminal_vhangup_fd(i64) #1

declare dso_local i32 @terminal_vhangup(i8*) #1

declare dso_local i32 @reset_terminal_fd(i64, i32) #1

declare dso_local i32 @reset_terminal(i8*) #1

declare dso_local i32 @vt_disallocate(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
