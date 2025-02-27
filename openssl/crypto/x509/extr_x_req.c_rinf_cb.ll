; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_x_req.c_rinf_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_x_req.c_rinf_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ASN1_OP_NEW_POST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**, i32*, i8*)* @rinf_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rinf_cb(i32 %0, i32** %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %6, align 4
  store i32** %1, i32*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i32**, i32*** %7, align 8
  %12 = load i32*, i32** %11, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %10, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @ASN1_OP_NEW_POST, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %4
  %18 = call i32 (...) @sk_X509_ATTRIBUTE_new_null()
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %28

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26, %4
  store i32 1, i32* %5, align 4
  br label %28

28:                                               ; preds = %27, %25
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @sk_X509_ATTRIBUTE_new_null(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
