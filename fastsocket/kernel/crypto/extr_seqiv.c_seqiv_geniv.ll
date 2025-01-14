; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_seqiv.c_seqiv_geniv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_seqiv.c_seqiv_geniv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seqiv_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seqiv_ctx*, i32*, i32, i32)* @seqiv_geniv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seqiv_geniv(%struct.seqiv_ctx* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.seqiv_ctx*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.seqiv_ctx* %0, %struct.seqiv_ctx** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = zext i32 %11 to i64
  %13 = icmp ugt i64 %12, 4
  br i1 %13, label %14, label %21

14:                                               ; preds = %4
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = zext i32 %16 to i64
  %18 = sub i64 %17, 4
  %19 = trunc i64 %18 to i32
  %20 = call i32 @memset(i32* %15, i32 0, i32 %19)
  store i32 4, i32* %9, align 4
  br label %21

21:                                               ; preds = %14, %4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @cpu_to_be64(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %9, align 4
  %29 = zext i32 %28 to i64
  %30 = sub i64 0, %29
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @memcpy(i32* %31, i32* %7, i32 %32)
  %34 = load i32*, i32** %6, align 8
  %35 = load %struct.seqiv_ctx*, %struct.seqiv_ctx** %5, align 8
  %36 = getelementptr inbounds %struct.seqiv_ctx, %struct.seqiv_ctx* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @crypto_xor(i32* %34, i32 %37, i32 %38)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @crypto_xor(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
