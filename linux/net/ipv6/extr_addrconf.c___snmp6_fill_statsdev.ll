; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c___snmp6_fill_statsdev.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c___snmp6_fill_statsdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ICMP6_MIB_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @__snmp6_fill_statsdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__snmp6_fill_statsdev(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = load i32, i32* @ICMP6_MIB_MAX, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 4, %12
  %14 = sub i64 %10, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load i32, i32* @ICMP6_MIB_MAX, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = call i32 @put_unaligned(i32 %20, i32* %22)
  store i32 1, i32* %7, align 4
  br label %24

24:                                               ; preds = %39, %3
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @ICMP6_MIB_MAX, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = call i32 @atomic_long_read(i32* %32)
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = call i32 @put_unaligned(i32 %33, i32* %37)
  br label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %24

42:                                               ; preds = %24
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* @ICMP6_MIB_MAX, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @memset(i32* %46, i32 0, i32 %47)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @put_unaligned(i32, i32*) #1

declare dso_local i32 @atomic_long_read(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
