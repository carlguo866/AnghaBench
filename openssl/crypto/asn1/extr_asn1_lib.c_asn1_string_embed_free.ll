; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_asn1_lib.c_asn1_string_embed_free.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_asn1_lib.c_asn1_string_embed_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_4__* }

@ASN1_STRING_FLAG_NDEF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @asn1_string_embed_free(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = icmp eq %struct.TYPE_4__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %26

8:                                                ; preds = %2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @ASN1_STRING_FLAG_NDEF, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = call i32 @OPENSSL_free(%struct.TYPE_4__* %18)
  br label %20

20:                                               ; preds = %15, %8
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = call i32 @OPENSSL_free(%struct.TYPE_4__* %24)
  br label %26

26:                                               ; preds = %7, %23, %20
  ret void
}

declare dso_local i32 @OPENSSL_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
