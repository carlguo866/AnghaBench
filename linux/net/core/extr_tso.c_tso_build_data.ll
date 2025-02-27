; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_tso.c_tso_build_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_tso.c_tso_build_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tso_t = type { i32, i64, i32, i64 }
%struct.TYPE_2__ = type { i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tso_build_data(%struct.sk_buff* %0, %struct.tso_t* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tso_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.tso_t* %1, %struct.tso_t** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.tso_t*, %struct.tso_t** %5, align 8
  %10 = getelementptr inbounds %struct.tso_t, %struct.tso_t* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, %8
  store i32 %12, i32* %10, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = load %struct.tso_t*, %struct.tso_t** %5, align 8
  %16 = getelementptr inbounds %struct.tso_t, %struct.tso_t* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %17, %14
  store i64 %18, i64* %16, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.tso_t*, %struct.tso_t** %5, align 8
  %21 = getelementptr inbounds %struct.tso_t, %struct.tso_t* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load %struct.tso_t*, %struct.tso_t** %5, align 8
  %25 = getelementptr inbounds %struct.tso_t, %struct.tso_t* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %58

28:                                               ; preds = %3
  %29 = load %struct.tso_t*, %struct.tso_t** %5, align 8
  %30 = getelementptr inbounds %struct.tso_t, %struct.tso_t* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %31, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %28
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.tso_t*, %struct.tso_t** %5, align 8
  %43 = getelementptr inbounds %struct.tso_t, %struct.tso_t* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  store i32* %45, i32** %7, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i64 @skb_frag_size(i32* %46)
  %48 = load %struct.tso_t*, %struct.tso_t** %5, align 8
  %49 = getelementptr inbounds %struct.tso_t, %struct.tso_t* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @skb_frag_address(i32* %50)
  %52 = load %struct.tso_t*, %struct.tso_t** %5, align 8
  %53 = getelementptr inbounds %struct.tso_t, %struct.tso_t* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.tso_t*, %struct.tso_t** %5, align 8
  %55 = getelementptr inbounds %struct.tso_t, %struct.tso_t* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %55, align 8
  br label %58

58:                                               ; preds = %37, %28, %3
  ret void
}

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_frag_size(i32*) #1

declare dso_local i32 @skb_frag_address(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
