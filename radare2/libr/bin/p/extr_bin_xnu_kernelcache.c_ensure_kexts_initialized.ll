; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_xnu_kernelcache.c_ensure_kexts_initialized.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_xnu_kernelcache.c_ensure_kexts_initialized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @ensure_kexts_initialized to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ensure_kexts_initialized(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %34

9:                                                ; preds = %1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = call i32* @filter_kexts(%struct.TYPE_5__* %12)
  store i32* %13, i32** %3, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %9
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @r_list_length(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @r_list_free(i32* %21)
  store i32* null, i32** %3, align 8
  br label %23

23:                                               ; preds = %20, %16, %9
  %24 = load i32*, i32** %3, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = call i32* @carve_kexts(%struct.TYPE_5__* %27)
  store i32* %28, i32** %3, align 8
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @r_kext_index_new(i32* %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %29, %8
  ret void
}

declare dso_local i32* @filter_kexts(%struct.TYPE_5__*) #1

declare dso_local i32 @r_list_length(i32*) #1

declare dso_local i32 @r_list_free(i32*) #1

declare dso_local i32* @carve_kexts(%struct.TYPE_5__*) #1

declare dso_local i32 @r_kext_index_new(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
