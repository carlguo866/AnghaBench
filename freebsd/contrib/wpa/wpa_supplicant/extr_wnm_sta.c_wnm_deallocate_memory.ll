; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wnm_sta.c_wnm_deallocate_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wnm_sta.c_wnm_deallocate_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.TYPE_2__*, %struct.TYPE_2__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wnm_deallocate_memory(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  %3 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %29, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %7 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %4
  %11 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %12 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = call i32 @os_free(%struct.TYPE_2__* %18)
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %21 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = call i32 @os_free(%struct.TYPE_2__* %27)
  br label %29

29:                                               ; preds = %10
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %4

32:                                               ; preds = %4
  %33 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %34 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %36 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = call i32 @os_free(%struct.TYPE_2__* %37)
  %39 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %40 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %39, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %40, align 8
  %41 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %42 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @wpabuf_free(i32* %43)
  %45 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %46 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %45, i32 0, i32 1
  store i32* null, i32** %46, align 8
  ret void
}

declare dso_local i32 @os_free(%struct.TYPE_2__*) #1

declare dso_local i32 @wpabuf_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
