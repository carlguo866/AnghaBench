; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-icmp6.c_mld6_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-icmp6.c_mld6_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.mld6_hdr = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"max resp delay: %d \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"addr: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*)* @mld6_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mld6_print(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mld6_hdr*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = bitcast i32* %7 to %struct.mld6_hdr*
  store %struct.mld6_hdr* %8, %struct.mld6_hdr** %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %6, align 8
  %12 = load %struct.mld6_hdr*, %struct.mld6_hdr** %5, align 8
  %13 = bitcast %struct.mld6_hdr* %12 to i32*
  %14 = getelementptr inbounds i32, i32* %13, i64 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ugt i32* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %34

18:                                               ; preds = %2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = load %struct.mld6_hdr*, %struct.mld6_hdr** %5, align 8
  %21 = getelementptr inbounds %struct.mld6_hdr, %struct.mld6_hdr* %20, i32 0, i32 1
  %22 = call i32 @EXTRACT_16BITS(i32* %21)
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to %struct.TYPE_5__*
  %25 = call i32 @ND_PRINT(%struct.TYPE_5__* %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = load %struct.mld6_hdr*, %struct.mld6_hdr** %5, align 8
  %29 = getelementptr inbounds %struct.mld6_hdr, %struct.mld6_hdr* %28, i32 0, i32 0
  %30 = call i32 @ip6addr_string(%struct.TYPE_5__* %27, i32* %29)
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to %struct.TYPE_5__*
  %33 = call i32 @ND_PRINT(%struct.TYPE_5__* %32)
  br label %34

34:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ip6addr_string(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
