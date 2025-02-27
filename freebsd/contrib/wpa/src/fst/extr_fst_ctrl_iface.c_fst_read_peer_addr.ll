; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_ctrl_iface.c_fst_read_peer_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_ctrl_iface.c_fst_read_peer_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Bad peer_mac %s: invalid addr string\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Bad peer_mac %s: not a unicast addr\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fst_read_peer_addr(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = call i64 @hwaddr_aton(i8* %6, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* @MSG_WARNING, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @fst_printf(i32 %11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %12)
  store i32 -1, i32* %3, align 4
  br label %27

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = call i64 @is_zero_ether_addr(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @is_multicast_ether_addr(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18, %14
  %23 = load i32, i32* @MSG_WARNING, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @fst_printf(i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  store i32 -1, i32* %3, align 4
  br label %27

26:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %22, %10
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i64 @hwaddr_aton(i8*, i32*) #1

declare dso_local i32 @fst_printf(i32, i8*, i8*) #1

declare dso_local i64 @is_zero_ether_addr(i32*) #1

declare dso_local i64 @is_multicast_ether_addr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
