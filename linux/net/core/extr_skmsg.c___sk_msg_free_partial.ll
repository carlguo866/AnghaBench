; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skmsg.c___sk_msg_free_partial.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skmsg.c___sk_msg_free_partial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_msg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.scatterlist = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_msg*, i64, i32)* @__sk_msg_free_partial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__sk_msg_free_partial(%struct.sock* %0, %struct.sk_msg* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_msg*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_msg* %1, %struct.sk_msg** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.sk_msg*, %struct.sk_msg** %6, align 8
  %12 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %10, align 8
  br label %15

15:                                               ; preds = %57, %4
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %82

18:                                               ; preds = %15
  %19 = load %struct.sk_msg*, %struct.sk_msg** %6, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call %struct.scatterlist* @sk_msg_elem(%struct.sk_msg* %19, i64 %20)
  store %struct.scatterlist* %21, %struct.scatterlist** %9, align 8
  %22 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %23 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  br label %82

27:                                               ; preds = %18
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %30 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %33, label %57

33:                                               ; preds = %27
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.sock*, %struct.sock** %5, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @sk_mem_uncharge(%struct.sock* %37, i64 %38)
  br label %40

40:                                               ; preds = %36, %33
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %43 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %44, %41
  store i64 %45, i64* %43, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %48 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, %46
  store i64 %50, i64* %48, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.sk_msg*, %struct.sk_msg** %6, align 8
  %53 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %55, %51
  store i64 %56, i64* %54, align 8
  br label %82

57:                                               ; preds = %27
  %58 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %59 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.sk_msg*, %struct.sk_msg** %6, align 8
  %62 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %64, %60
  store i64 %65, i64* %63, align 8
  %66 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %67 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %7, align 8
  %70 = sub nsw i64 %69, %68
  store i64 %70, i64* %7, align 8
  %71 = load %struct.sock*, %struct.sock** %5, align 8
  %72 = load %struct.sk_msg*, %struct.sk_msg** %6, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @sk_msg_free_elem(%struct.sock* %71, %struct.sk_msg* %72, i64 %73, i32 %74)
  %76 = load i64, i64* %10, align 8
  %77 = call i32 @sk_msg_iter_var_next(i64 %76)
  %78 = load %struct.sk_msg*, %struct.sk_msg** %6, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* %7, align 8
  %81 = call i32 @sk_msg_check_to_free(%struct.sk_msg* %78, i64 %79, i64 %80)
  br label %15

82:                                               ; preds = %40, %26, %15
  %83 = load i64, i64* %10, align 8
  %84 = load %struct.sk_msg*, %struct.sk_msg** %6, align 8
  %85 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i64 %83, i64* %86, align 8
  ret void
}

declare dso_local %struct.scatterlist* @sk_msg_elem(%struct.sk_msg*, i64) #1

declare dso_local i32 @sk_mem_uncharge(%struct.sock*, i64) #1

declare dso_local i32 @sk_msg_free_elem(%struct.sock*, %struct.sk_msg*, i64, i32) #1

declare dso_local i32 @sk_msg_iter_var_next(i64) #1

declare dso_local i32 @sk_msg_check_to_free(%struct.sk_msg*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
