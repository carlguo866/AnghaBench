; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-dvmrp.c_print_graft.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-dvmrp.c_print_graft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c" src %s grp %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @print_graft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_graft(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @ND_TCHECK2(i32 %8, i32 8)
  %10 = load i32*, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @ipaddr_string(i32* %11, i32* %12)
  %14 = load i32*, i32** %4, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 4
  %17 = call i32 @ipaddr_string(i32* %14, i32* %16)
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i32*
  %20 = call i32 @ND_PRINT(i32* %19)
  store i32 0, i32* %3, align 4
  br label %22

21:                                               ; No predecessors!
  store i32 -1, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %2
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ipaddr_string(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
