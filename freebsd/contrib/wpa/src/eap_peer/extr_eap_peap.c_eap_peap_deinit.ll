; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_peap.c_eap_peap_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_peap.c_eap_peap_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_peap_data = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.eap_sm*, i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, i8*)* @eap_peap_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_peap_deinit(%struct.eap_sm* %0, i8* %1) #0 {
  %3 = alloca %struct.eap_sm*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.eap_peap_data*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.eap_peap_data*
  store %struct.eap_peap_data* %7, %struct.eap_peap_data** %5, align 8
  %8 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %9 = icmp eq %struct.eap_peap_data* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %57

11:                                               ; preds = %2
  %12 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %13 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %11
  %17 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %18 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %17, i32 0, i32 6
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp ne %struct.TYPE_2__* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %23 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %22, i32 0, i32 6
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.eap_sm*, i64)*, i32 (%struct.eap_sm*, i64)** %25, align 8
  %27 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %28 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %29 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = call i32 %26(%struct.eap_sm* %27, i64 %30)
  br label %32

32:                                               ; preds = %21, %16, %11
  %33 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %34 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @os_free(i32 %35)
  %37 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %38 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %39 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %38, i32 0, i32 3
  %40 = call i32 @eap_peer_tls_ssl_deinit(%struct.eap_sm* %37, i32* %39)
  %41 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %42 = call i32 @eap_peap_free_key(%struct.eap_peap_data* %41)
  %43 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %44 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @os_free(i32 %45)
  %47 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %48 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @wpabuf_clear_free(i32 %49)
  %51 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %52 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @wpabuf_clear_free(i32 %53)
  %55 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %56 = call i32 @bin_clear_free(%struct.eap_peap_data* %55, i32 40)
  br label %57

57:                                               ; preds = %32, %10
  ret void
}

declare dso_local i32 @os_free(i32) #1

declare dso_local i32 @eap_peer_tls_ssl_deinit(%struct.eap_sm*, i32*) #1

declare dso_local i32 @eap_peap_free_key(%struct.eap_peap_data*) #1

declare dso_local i32 @wpabuf_clear_free(i32) #1

declare dso_local i32 @bin_clear_free(%struct.eap_peap_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
