; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-oci.c_oci_rootfs_propagation.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-oci.c_oci_rootfs_propagation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@JSON_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Ignoring rootfsPropagation setting '%s'.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32, i8*)* @oci_rootfs_propagation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oci_rootfs_propagation(i8* %0, i32* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i8* @json_variant_string(i32* %11)
  store i8* %12, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = call i64 @streq(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %24

17:                                               ; preds = %4
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @JSON_DEBUG, align 4
  %21 = or i32 %19, %20
  %22 = load i8*, i8** %10, align 8
  %23 = call i32 @json_log(i32* %18, i32 %21, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %17, %16
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local i8* @json_variant_string(i32*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @json_log(i32*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
