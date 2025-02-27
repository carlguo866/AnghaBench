; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_tox.c_tox_friend_get_connection_status.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_tox.c_tox_friend_get_connection_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TOX_ERR_FRIEND_QUERY_FRIEND_NOT_FOUND = common dso_local global i32 0, align 4
@TOX_CONNECTION_NONE = common dso_local global i32 0, align 4
@TOX_ERR_FRIEND_QUERY_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tox_friend_get_connection_status(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %5, align 8
  store i32* %10, i32** %8, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @m_get_friend_connectionstatus(i32* %11, i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* @TOX_ERR_FRIEND_QUERY_FRIEND_NOT_FOUND, align 4
  %19 = call i32 @SET_ERROR_PARAMETER(i32* %17, i32 %18)
  %20 = load i32, i32* @TOX_CONNECTION_NONE, align 4
  store i32 %20, i32* %4, align 4
  br label %26

21:                                               ; preds = %3
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* @TOX_ERR_FRIEND_QUERY_OK, align 4
  %24 = call i32 @SET_ERROR_PARAMETER(i32* %22, i32 %23)
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %21, %16
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @m_get_friend_connectionstatus(i32*, i32) #1

declare dso_local i32 @SET_ERROR_PARAMETER(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
