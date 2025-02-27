; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_socklib.c_xdr_skb_read_and_csum_bits.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_socklib.c_xdr_skb_read_and_csum_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_skb_reader = type { i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.xdr_skb_reader*, i8*, i64)* @xdr_skb_read_and_csum_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xdr_skb_read_and_csum_bits(%struct.xdr_skb_reader* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.xdr_skb_reader*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.xdr_skb_reader* %0, %struct.xdr_skb_reader** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.xdr_skb_reader*, %struct.xdr_skb_reader** %4, align 8
  %11 = getelementptr inbounds %struct.xdr_skb_reader, %struct.xdr_skb_reader* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ugt i64 %9, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.xdr_skb_reader*, %struct.xdr_skb_reader** %4, align 8
  %16 = getelementptr inbounds %struct.xdr_skb_reader, %struct.xdr_skb_reader* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %6, align 8
  br label %18

18:                                               ; preds = %14, %3
  %19 = load %struct.xdr_skb_reader*, %struct.xdr_skb_reader** %4, align 8
  %20 = getelementptr inbounds %struct.xdr_skb_reader, %struct.xdr_skb_reader* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  %22 = load %struct.xdr_skb_reader*, %struct.xdr_skb_reader** %4, align 8
  %23 = getelementptr inbounds %struct.xdr_skb_reader, %struct.xdr_skb_reader* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @skb_copy_and_csum_bits(i32 %24, i32 %25, i8* %26, i64 %27, i32 0)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.xdr_skb_reader*, %struct.xdr_skb_reader** %4, align 8
  %30 = getelementptr inbounds %struct.xdr_skb_reader, %struct.xdr_skb_reader* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @csum_block_add(i32 %31, i32 %32, i32 %33)
  %35 = load %struct.xdr_skb_reader*, %struct.xdr_skb_reader** %4, align 8
  %36 = getelementptr inbounds %struct.xdr_skb_reader, %struct.xdr_skb_reader* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.xdr_skb_reader*, %struct.xdr_skb_reader** %4, align 8
  %39 = getelementptr inbounds %struct.xdr_skb_reader, %struct.xdr_skb_reader* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub i64 %40, %37
  store i64 %41, i64* %39, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.xdr_skb_reader*, %struct.xdr_skb_reader** %4, align 8
  %44 = getelementptr inbounds %struct.xdr_skb_reader, %struct.xdr_skb_reader* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = zext i32 %45 to i64
  %47 = add i64 %46, %42
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %44, align 8
  %49 = load i64, i64* %6, align 8
  ret i64 %49
}

declare dso_local i32 @skb_copy_and_csum_bits(i32, i32, i8*, i64, i32) #1

declare dso_local i32 @csum_block_add(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
