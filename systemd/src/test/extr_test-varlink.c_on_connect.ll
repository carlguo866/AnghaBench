; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-varlink.c_on_connect.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-varlink.c_on_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UID_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*)* @on_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_connect(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i64, i64* @UID_INVALID, align 8
  store i64 %8, i64* %7, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @assert(i32* %9)
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @assert(i32* %11)
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @varlink_get_peer_uid(i32* %13, i64* %7)
  %15 = icmp sge i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert_se(i32 %16)
  %18 = call i64 (...) @getuid()
  %19 = load i64, i64* %7, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert_se(i32 %21)
  ret i32 0
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @varlink_get_peer_uid(i32*, i64*) #1

declare dso_local i64 @getuid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
