; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_trad_enc_decrypt_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_trad_enc_decrypt_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trad_enc_ctx = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trad_enc_ctx*)* @trad_enc_decrypt_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trad_enc_decrypt_byte(%struct.trad_enc_ctx* %0) #0 {
  %2 = alloca %struct.trad_enc_ctx*, align 8
  %3 = alloca i32, align 4
  store %struct.trad_enc_ctx* %0, %struct.trad_enc_ctx** %2, align 8
  %4 = load %struct.trad_enc_ctx*, %struct.trad_enc_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.trad_enc_ctx, %struct.trad_enc_ctx* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 2
  %8 = load i32, i32* %7, align 4
  %9 = or i32 %8, 2
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = xor i32 %11, 1
  %13 = mul i32 %10, %12
  %14 = lshr i32 %13, 8
  %15 = and i32 %14, 255
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
