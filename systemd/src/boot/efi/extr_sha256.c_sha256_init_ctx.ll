; ModuleID = '/home/carl/AnghaBench/systemd/src/boot/efi/extr_sha256.c_sha256_init_ctx.c'
source_filename = "/home/carl/AnghaBench/systemd/src/boot/efi/extr_sha256.c_sha256_init_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sha256_ctx = type { i32*, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sha256_init_ctx(%struct.sha256_ctx* %0) #0 {
  %2 = alloca %struct.sha256_ctx*, align 8
  store %struct.sha256_ctx* %0, %struct.sha256_ctx** %2, align 8
  %3 = load %struct.sha256_ctx*, %struct.sha256_ctx** %2, align 8
  %4 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  store i32 1779033703, i32* %6, align 4
  %7 = load %struct.sha256_ctx*, %struct.sha256_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  store i32 -1150833019, i32* %10, align 4
  %11 = load %struct.sha256_ctx*, %struct.sha256_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 2
  store i32 1013904242, i32* %14, align 4
  %15 = load %struct.sha256_ctx*, %struct.sha256_ctx** %2, align 8
  %16 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 3
  store i32 -1521486534, i32* %18, align 4
  %19 = load %struct.sha256_ctx*, %struct.sha256_ctx** %2, align 8
  %20 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 4
  store i32 1359893119, i32* %22, align 4
  %23 = load %struct.sha256_ctx*, %struct.sha256_ctx** %2, align 8
  %24 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 5
  store i32 -1694144372, i32* %26, align 4
  %27 = load %struct.sha256_ctx*, %struct.sha256_ctx** %2, align 8
  %28 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 6
  store i32 528734635, i32* %30, align 4
  %31 = load %struct.sha256_ctx*, %struct.sha256_ctx** %2, align 8
  %32 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 7
  store i32 1541459225, i32* %34, align 4
  %35 = load %struct.sha256_ctx*, %struct.sha256_ctx** %2, align 8
  %36 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.sha256_ctx*, %struct.sha256_ctx** %2, align 8
  %38 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
