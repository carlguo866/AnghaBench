; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_init_strm_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_init_strm_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strm_dentry_t = type { i32, i32, i32, i32 }
%struct.dentry_t = type { i32 }

@TYPE_STREAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_strm_entry(%struct.strm_dentry_t* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.strm_dentry_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.strm_dentry_t* %0, %struct.strm_dentry_t** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.strm_dentry_t*, %struct.strm_dentry_t** %5, align 8
  %10 = bitcast %struct.strm_dentry_t* %9 to %struct.dentry_t*
  %11 = load i32, i32* @TYPE_STREAM, align 4
  %12 = call i32 @exfat_set_entry_type(%struct.dentry_t* %10, i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.strm_dentry_t*, %struct.strm_dentry_t** %5, align 8
  %15 = getelementptr inbounds %struct.strm_dentry_t, %struct.strm_dentry_t* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load %struct.strm_dentry_t*, %struct.strm_dentry_t** %5, align 8
  %17 = getelementptr inbounds %struct.strm_dentry_t, %struct.strm_dentry_t* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @SET32_A(i32 %18, i32 %19)
  %21 = load %struct.strm_dentry_t*, %struct.strm_dentry_t** %5, align 8
  %22 = getelementptr inbounds %struct.strm_dentry_t, %struct.strm_dentry_t* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @SET64_A(i32 %23, i32 %24)
  %26 = load %struct.strm_dentry_t*, %struct.strm_dentry_t** %5, align 8
  %27 = getelementptr inbounds %struct.strm_dentry_t, %struct.strm_dentry_t* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @SET64_A(i32 %28, i32 %29)
  ret void
}

declare dso_local i32 @exfat_set_entry_type(%struct.dentry_t*, i32) #1

declare dso_local i32 @SET32_A(i32, i32) #1

declare dso_local i32 @SET64_A(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
