; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_bitmap.c_nft_bitmap_location.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_bitmap.c_nft_bitmap_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_set = type { i32 }

@BITS_PER_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_set*, i8*, i32*, i32*)* @nft_bitmap_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_bitmap_location(%struct.nft_set* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.nft_set*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.nft_set* %0, %struct.nft_set** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.nft_set*, %struct.nft_set** %5, align 8
  %11 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  br label %22

18:                                               ; preds = %4
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to i32*
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = load i32, i32* %9, align 4
  %24 = shl i32 %23, 1
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @BITS_PER_BYTE, align 4
  %27 = sdiv i32 %25, %26
  %28 = load i32*, i32** %7, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @BITS_PER_BYTE, align 4
  %31 = srem i32 %29, %30
  %32 = load i32*, i32** %8, align 8
  store i32 %31, i32* %32, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
