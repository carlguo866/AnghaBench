; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/crypto/extr_octeon-sha256.c_octeon_sha256_read_hash.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/crypto/extr_octeon-sha256.c_octeon_sha256_read_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sha256_state = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sha256_state*)* @octeon_sha256_read_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_sha256_read_hash(%struct.sha256_state* %0) #0 {
  %2 = alloca %struct.sha256_state*, align 8
  %3 = alloca i32*, align 8
  store %struct.sha256_state* %0, %struct.sha256_state** %2, align 8
  %4 = load %struct.sha256_state*, %struct.sha256_state** %2, align 8
  %5 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to i32*
  store i32* %7, i32** %3, align 8
  %8 = call i32 @read_octeon_64bit_hash_dword(i32 0)
  %9 = load i32*, i32** %3, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 %8, i32* %10, align 4
  %11 = call i32 @read_octeon_64bit_hash_dword(i32 1)
  %12 = load i32*, i32** %3, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 %11, i32* %13, align 4
  %14 = call i32 @read_octeon_64bit_hash_dword(i32 2)
  %15 = load i32*, i32** %3, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  store i32 %14, i32* %16, align 4
  %17 = call i32 @read_octeon_64bit_hash_dword(i32 3)
  %18 = load i32*, i32** %3, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 3
  store i32 %17, i32* %19, align 4
  ret void
}

declare dso_local i32 @read_octeon_64bit_hash_dword(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
