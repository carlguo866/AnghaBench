; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libefivar/extr_efivar.c_efi_var_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libefivar/extr_efivar.c_efi_var_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efi_var_ioc = type { i64, i32*, i64, i32, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efi_var_ioc*)* @efi_var_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efi_var_reset(%struct.efi_var_ioc* %0) #0 {
  %2 = alloca %struct.efi_var_ioc*, align 8
  store %struct.efi_var_ioc* %0, %struct.efi_var_ioc** %2, align 8
  %3 = load %struct.efi_var_ioc*, %struct.efi_var_ioc** %2, align 8
  %4 = getelementptr inbounds %struct.efi_var_ioc, %struct.efi_var_ioc* %3, i32 0, i32 5
  store i32* null, i32** %4, align 8
  %5 = load %struct.efi_var_ioc*, %struct.efi_var_ioc** %2, align 8
  %6 = getelementptr inbounds %struct.efi_var_ioc, %struct.efi_var_ioc* %5, i32 0, i32 4
  store i64 0, i64* %6, align 8
  %7 = load %struct.efi_var_ioc*, %struct.efi_var_ioc** %2, align 8
  %8 = getelementptr inbounds %struct.efi_var_ioc, %struct.efi_var_ioc* %7, i32 0, i32 3
  %9 = call i32 @memset(i32* %8, i32 0, i32 4)
  %10 = load %struct.efi_var_ioc*, %struct.efi_var_ioc** %2, align 8
  %11 = getelementptr inbounds %struct.efi_var_ioc, %struct.efi_var_ioc* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = load %struct.efi_var_ioc*, %struct.efi_var_ioc** %2, align 8
  %13 = getelementptr inbounds %struct.efi_var_ioc, %struct.efi_var_ioc* %12, i32 0, i32 1
  store i32* null, i32** %13, align 8
  %14 = load %struct.efi_var_ioc*, %struct.efi_var_ioc** %2, align 8
  %15 = getelementptr inbounds %struct.efi_var_ioc, %struct.efi_var_ioc* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
