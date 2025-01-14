; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_salsa20_generic.c_salsa20_init.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_salsa20_generic.c_salsa20_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.salsa20_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.salsa20_ctx*, i32*)* @salsa20_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @salsa20_init(i32* %0, %struct.salsa20_ctx* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.salsa20_ctx*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.salsa20_ctx* %1, %struct.salsa20_ctx** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load %struct.salsa20_ctx*, %struct.salsa20_ctx** %5, align 8
  %9 = getelementptr inbounds %struct.salsa20_ctx, %struct.salsa20_ctx* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @memcpy(i32* %7, i32 %10, i32 4)
  %12 = load i32*, i32** %6, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = call i32 @get_unaligned_le32(i32* %13)
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 6
  store i32 %14, i32* %16, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 4
  %19 = call i32 @get_unaligned_le32(i32* %18)
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 7
  store i32 %19, i32* %21, align 4
  ret void
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @get_unaligned_le32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
