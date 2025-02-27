; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/fdt/extr_efi_fdt.c_fdt_platform_load_dtb.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/fdt/extr_efi_fdt.c_fdt_platform_load_dtb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_header = type { i32 }

@fdtdtb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Using DTB provided by EFI at %p.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_platform_load_dtb() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.fdt_header*, align 8
  %3 = call %struct.fdt_header* @efi_get_table(i32* @fdtdtb)
  store %struct.fdt_header* %3, %struct.fdt_header** %2, align 8
  %4 = load %struct.fdt_header*, %struct.fdt_header** %2, align 8
  %5 = icmp eq %struct.fdt_header* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %15

7:                                                ; preds = %0
  %8 = load %struct.fdt_header*, %struct.fdt_header** %2, align 8
  %9 = call i64 @fdt_load_dtb_addr(%struct.fdt_header* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i32 1, i32* %1, align 4
  br label %15

12:                                               ; preds = %7
  %13 = load %struct.fdt_header*, %struct.fdt_header** %2, align 8
  %14 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.fdt_header* %13)
  store i32 0, i32* %1, align 4
  br label %15

15:                                               ; preds = %12, %11, %6
  %16 = load i32, i32* %1, align 4
  ret i32 %16
}

declare dso_local %struct.fdt_header* @efi_get_table(i32*) #1

declare dso_local i64 @fdt_load_dtb_addr(%struct.fdt_header*) #1

declare dso_local i32 @printf(i8*, %struct.fdt_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
