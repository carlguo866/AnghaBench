; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_cred.c_tlsv1_cred_free.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_cred.c_tlsv1_cred_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_credentials = type { %struct.tlsv1_credentials*, %struct.tlsv1_credentials*, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tlsv1_cred_free(%struct.tlsv1_credentials* %0) #0 {
  %2 = alloca %struct.tlsv1_credentials*, align 8
  store %struct.tlsv1_credentials* %0, %struct.tlsv1_credentials** %2, align 8
  %3 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %2, align 8
  %4 = icmp eq %struct.tlsv1_credentials* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %29

6:                                                ; preds = %1
  %7 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %2, align 8
  %8 = getelementptr inbounds %struct.tlsv1_credentials, %struct.tlsv1_credentials* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @x509_certificate_chain_free(i32 %9)
  %11 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %2, align 8
  %12 = getelementptr inbounds %struct.tlsv1_credentials, %struct.tlsv1_credentials* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @x509_certificate_chain_free(i32 %13)
  %15 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %2, align 8
  %16 = getelementptr inbounds %struct.tlsv1_credentials, %struct.tlsv1_credentials* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @crypto_private_key_free(i32 %17)
  %19 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %2, align 8
  %20 = getelementptr inbounds %struct.tlsv1_credentials, %struct.tlsv1_credentials* %19, i32 0, i32 1
  %21 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %20, align 8
  %22 = call i32 @os_free(%struct.tlsv1_credentials* %21)
  %23 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %2, align 8
  %24 = getelementptr inbounds %struct.tlsv1_credentials, %struct.tlsv1_credentials* %23, i32 0, i32 0
  %25 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %24, align 8
  %26 = call i32 @os_free(%struct.tlsv1_credentials* %25)
  %27 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %2, align 8
  %28 = call i32 @os_free(%struct.tlsv1_credentials* %27)
  br label %29

29:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @x509_certificate_chain_free(i32) #1

declare dso_local i32 @crypto_private_key_free(i32) #1

declare dso_local i32 @os_free(%struct.tlsv1_credentials*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
